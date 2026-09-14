rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

packages <- c(
  "openxlsx", "tidyverse", "grid", "gridExtra",
  "cowplot", "plotly", "latex2exp"
)

invisible(lapply(packages, library, character.only = TRUE))

width  <- 6
height <- 4.5
max_x  <- 1.45

graph_dir <- "R Simulation Figures/Output"

indicators_to_plot <- c(
  "K", "OUTPUT", "MANAGERIAL_LAYERS", "WORKERS",
  "SKILLS", "OUTPUT_WORKERS", "Q_PROD", "ALPHA_BAR"
)

indicator_levels <- c(
  "K", "OUTPUT", "MANAGERIAL_LAYERS", "WORKERS",
  "SKILLS", "OUTPUT_WORKERS", "Q_PROD",
  "ALPHA_BAR", "REVENUE_WORKERS"
)

leg <- c(
  "Baseline price of labor, k",
  "Output",
  "Managerial layers",
  "Agents allocated to production \n(workers + managers)",
  "Total skills",
  "Output/(workers + managers)",
  "Q-productivity index",
  "Demand shifter cutoff"
)

cols <- c(
  "black", "red", "blue", "green",
  "gray33", "orange", "darkviolet", "darkgreen"
)

prepare_tab <- function(path) {
  read_csv(path, show_col_types = FALSE) %>%
    pivot_longer(
      cols = -Row,
      names_to = "Scenario",
      values_to = "Value"
    ) %>%
    pivot_wider(
      names_from = Row,
      values_from = Value
    ) %>%
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
      REVENUE_WORKERS = `Average revenue per worker`,
      L0              = `L=0`,
      L1              = `L=1`,
      L2              = `L=2`,
      L3              = `L=3`
    ) %>%
    distinct() %>%
    mutate(
      MW_K = if_else(MW > 0 & K != 0, MW / K, 1),
      
      OUTPUT = OUTPUT / max(OUTPUT, na.rm = TRUE),
      WORKERS = WORKERS / max(WORKERS, na.rm = TRUE),
      SKILLS = TEACHERS / min(TEACHERS, na.rm = TRUE),
      
      MANAGERIAL_LAYERS = L1 + 2 * L2 + 3 * L3,
      MANAGERIAL_LAYERS = MANAGERIAL_LAYERS / max(MANAGERIAL_LAYERS, na.rm = TRUE),
      
      OUTPUT_WORKERS = OUTPUT_WORKERS / min(OUTPUT_WORKERS, na.rm = TRUE),
      INV_PROD = AV_COST / K,
      INV_PROD = INV_PROD / min(INV_PROD, na.rm = TRUE),
      
      Q_PROD = Q_PROD / max(Q_PROD, na.rm = TRUE),
      K = K / max(K, na.rm = TRUE),
      
      norm_ALPHA = if_else(MW_K == 1, ALPHA_BAR, NA_real_),
      ALPHA_BAR = ALPHA_BAR / max(norm_ALPHA, na.rm = TRUE),
      
      REVENUE_WORKERS = REVENUE_WORKERS / min(REVENUE_WORKERS, na.rm = TRUE)
    ) %>%
    select(
      MW_K, OUTPUT, WORKERS, OUTPUT_WORKERS, Q_PROD,
      K, SKILLS, ALPHA_BAR, REVENUE_WORKERS, MANAGERIAL_LAYERS
    ) %>%
    pivot_longer(
      cols = -MW_K,
      names_to = "Indicators",
      values_to = "val_indic"
    ) %>%
    mutate(
      Indicators = factor(Indicators, levels = indicator_levels)
    )
}

make_plot <- function(tab, show_legend = FALSE) {
  tab %>%
    filter(Indicators %in% indicators_to_plot) %>%
    ggplot(aes(x = MW_K, y = val_indic, color = Indicators)) +
    geom_line(aes(linetype = Indicators), linewidth = 1.1) +
    geom_vline(
      xintercept = 1.04,
      linetype = "dotted",
      color = "gray",
      linewidth = 0.75
    ) +
    theme_classic() +
    coord_cartesian(xlim = c(1, max_x), ylim = c(0.75, 1.25)) +
    labs(x = "Minimum wage / k", y = "") +
    scale_colour_manual(values = cols, labels = leg, name = "") +
    scale_linetype_discrete(labels = leg, name = "") +
    guides(color = guide_legend(ncol = 1)) +
    theme(
      legend.title = element_blank(),
      legend.position = if_else(show_legend, "right", "none"),
    )
}

TAB <- prepare_tab("Baseline Specification/Output/Figure6.csv")

plot_with_legend <- make_plot(TAB, show_legend = TRUE)
legend <- cowplot::get_legend(plot_with_legend)

ggsave(
  file.path(graph_dir, "Fig6_legend.pdf"),
  plot = legend,
  width = 3.5,
  height = 2,
)

ggsave(
  file.path(graph_dir, "FigG1_legend.pdf"),
  plot = legend,
  width = 3.5,
  height = 2
)

plot_MW <- make_plot(TAB, show_legend = FALSE)

ggsave(
  file.path(graph_dir, "Fig6.pdf"),
  plot = plot_MW,
  width = width,
  height = height
)