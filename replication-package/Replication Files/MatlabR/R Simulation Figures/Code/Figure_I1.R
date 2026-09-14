rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

packages <- c(
  "openxlsx", "tidyverse", "grid", "gridExtra",
  "cowplot", "plotly", "latex2exp"
)

invisible(lapply(packages, library, character.only = TRUE))

width  <- 6
height <- 4.5

graph_dir <- "R Simulation Figures/Output"

indicators_to_plot <- c(
  "K", "OUTPUT", "WORKERS", "SKILLS",
  "OUTPUT_WORKERS", "Q_PROD"
)

indicator_levels <- c(
  "K", "OUTPUT", "WORKERS", "SKILLS",
  "OUTPUT_WORKERS", "Q_PROD",
  "ALPHA_BAR", "REVENUE_WORKERS", "MANAGERIAL_LAYERS"
)

leg_light <- c(
  "Baseline price of labor, k",
  "Output",
  "Agents allocated to production \n(workers + managers)",
  "Total skills",
  "Output / (workers + managers)",
  "Q-productivity index"
)

cols_light <- c("black", "red", "green", "gray33", "orange", "darkviolet")
types_light <- c("solid", "dashed", "dashed", "dotted", "dotdash", "longdash")

prepare_tab <- function(path, with_layers = TRUE, add_no_binding = FALSE) {
  
  raw <- read_csv(path, show_col_types = FALSE)
  
  if (add_no_binding) {
    no_binding <- raw %>%
      select(Row, `2% lower`) %>%
      rename(`no binding` = `2% lower`) %>%
      pivot_longer(-Row, names_to = "Scenario", values_to = "Value") %>%
      pivot_wider(names_from = Row, values_from = Value) %>%
      mutate(`Value of minimum wage` = -1)
    
    raw <- raw %>%
      pivot_longer(-Row, names_to = "Scenario", values_to = "Value") %>%
      pivot_wider(names_from = Row, values_from = Value) %>%
      bind_rows(no_binding) %>%
      filter(Scenario != "2% higher")
    
  } else {
    raw <- raw %>%
      pivot_longer(-Row, names_to = "Scenario", values_to = "Value") %>%
      pivot_wider(names_from = Row, values_from = Value)
  }
  
  tab <- raw %>%
    rename(
      MW              = `Value of minimum wage`,
      K               = `Net wage k`,
      OUTPUT          = `Total output`,
      WORKERS         = `Workers/managers`,
      TEACHERS        = `Teachers`,
      OUTPUT_WORKERS  = `Average output per worker`,
      AV_COST         = `Average of average cost`,
      Q_PROD          = `Average Q-productivity index`,
      ALPHA_BAR       = `Production cutoff alpha_bar`,
      REVENUE_WORKERS = `Average revenue per worker`
    )
  
  if (with_layers) {
    tab <- tab %>%
      rename(
        L0 = `L=0`,
        L1 = `L=1`,
        L2 = `L=2`,
        L3 = `L=3`
      ) %>%
      mutate(
        MANAGERIAL_LAYERS = L1 + 2 * L2 + 3 * L3,
        MANAGERIAL_LAYERS = MANAGERIAL_LAYERS / max(MANAGERIAL_LAYERS, na.rm = TRUE)
      )
  }
  
  tab %>%
    distinct() %>%
    mutate(
      MW_K = if_else(MW > 0 & K != 0, MW / K, 1),
      
      OUTPUT = OUTPUT / max(OUTPUT, na.rm = TRUE),
      WORKERS = WORKERS / max(WORKERS, na.rm = TRUE),
      SKILLS = TEACHERS / min(TEACHERS, na.rm = TRUE),
      OUTPUT_WORKERS = OUTPUT_WORKERS / min(OUTPUT_WORKERS, na.rm = TRUE),
      INV_PROD = AV_COST / K,
      INV_PROD = INV_PROD / min(INV_PROD, na.rm = TRUE),
      Q_PROD = Q_PROD / max(Q_PROD, na.rm = TRUE),
      K = K / max(K, na.rm = TRUE),
      norm_ALPHA = if_else(MW_K == 1, ALPHA_BAR, NA_real_),
      ALPHA_BAR = ALPHA_BAR / max(norm_ALPHA, na.rm = TRUE),
      REVENUE_WORKERS = REVENUE_WORKERS / min(REVENUE_WORKERS, na.rm = TRUE)
    ) %>%
    select(any_of(c(
      "MW_K", "OUTPUT", "WORKERS", "OUTPUT_WORKERS",
      "Q_PROD", "K", "SKILLS", "ALPHA_BAR",
      "REVENUE_WORKERS", "MANAGERIAL_LAYERS"
    ))) %>%
    pivot_longer(
      cols = -MW_K,
      names_to = "Indicators",
      values_to = "val_indic"
    ) %>%
    mutate(
      Indicators = factor(Indicators, levels = indicator_levels)
    )
}

make_plot <- function(tab, legend = FALSE, breaks_by = 0.05) {
  tab %>%
    filter(Indicators %in% indicators_to_plot) %>%
    ggplot(aes(x = MW_K, y = val_indic, color = Indicators)) +
    geom_line(aes(linetype = Indicators), linewidth = 1.1) +
    theme_classic() +
    coord_cartesian(xlim = c(1, 1.24), ylim = c(0.9, 1.1)) +
    labs(x = "Minimum wage / k", y = "") +
    scale_colour_manual(values = cols_light, name = "", labels = leg_light) +
    scale_linetype_manual(values = types_light, name = "", labels = leg_light) +
    scale_y_continuous(breaks = seq(0.9, 1.1, by = breaks_by)) +
    scale_x_continuous(breaks = seq(1.0, 1.25, by = breaks_by)) +
    guides(color = guide_legend(ncol = 1)) +
    theme(
      legend.title = element_blank(),
      legend.position = if_else(legend, "right", "none")
    )
}

# A. Model with organizations

tab_org <- prepare_tab(
  path = "Baseline Specification/Output/Figure6.csv",
  with_layers = TRUE
)

plot_org_legend <- make_plot(tab_org, legend = TRUE, breaks_by = 0.01)

legend <- cowplot::get_legend(plot_org_legend)

ggsave(
  file.path(graph_dir, "FigureI1legend.pdf"),
  plot = legend,
  width = 3.5,
  height = 2
)

plot_org <- make_plot(tab_org, legend = FALSE)

ggsave(
  file.path(graph_dir, "FigureI1B.pdf"),
  plot = plot_org,
  width = width,
  height = height
)

# B. Model without organizations

tab_no_org <- prepare_tab(
  path = "Unproductive Managers Specification/Output/FigureI1.csv",
  with_layers = FALSE,
  add_no_binding = TRUE
)

plot_no_org <- make_plot(tab_no_org, legend = FALSE)

ggsave(
  file.path(graph_dir, "FigureI1A.pdf"),
  plot = plot_no_org,
  width = width,
  height = height
)