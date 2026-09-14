rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

packages <- c(
  "openxlsx", "tidyverse", "grid", "gridExtra",
  "cowplot", "plotly", "latex2exp", "sjmisc"
)

invisible(lapply(packages, library, character.only = TRUE))

width  <- 6
height <- 4.5
max_x  <- 1.4

graph_dir <- "R Simulation Figures/Output"

cols <- c("black", "red", "blue", "green", "gray33")

leg_litt <- c(
  "BASELINE",
  "Problem solving techno.",
  "Communication techno.",
  "Information techno.",
  "Output per pb solved"
)

baseline_sim <- "1.000; h = 0.193; c = 0.220; A = 0.240"

TAB <- read_csv("Baseline Specification/Output/Figure8.csv", show_col_types = FALSE) %>%
  distinct() %>%
  mutate(
    MW_2 = if_else(MW > 0, MW, K),
    MW_3 = MW_2 / K,
    
    Simulation = sprintf(
      "%.3f; h = %.3f; c = %.3f; A = %.3f",
      LAMBDA, H, C, A
    ),
    
    OUTPUT = OUTPUT * 100,
    MANAGERIAL_LAYERS = L1 + 2 * L2 + 3 * L3,
    
    WAGE_L0 = C * Z0_L + 1,
    WAGE_L1 = C * as.numeric(Z1_L) + 1,
    WAGE_L2 = C * as.numeric(Z2_L) + 1,
    
    SKILLS = TEACHERS / C,
    
    MAX_W = coalesce(
      as.numeric(MANAGER_Z_3) + 1,
      as.numeric(MANAGER_Z_2) + 1,
      as.numeric(MANAGER_Z_1) + 1
    ),
    
    INV_PROD = AV_COST / K,
    
    bad_numeric = (C < 0.22 | LAMBDA > 1) & MW_3 >= 1.4,
    
    across(
      c(OUTPUT, Q_PROD, SKILLS, WORKERS),
      ~ if_else(bad_numeric, NA_real_, .x)
    ),
    
    Simulation = factor(
      Simulation,
      levels = {
        lev <- unique(Simulation)
        c(baseline_sim, setdiff(lev, baseline_sim))
      }
    )
  )

TAB %>% count(Simulation)
#simulation_levels <- TAB %>%  distinct(Simulation) %>%  pull(Simulation) %>%  { c(baseline_sim, setdiff(., baseline_sim)) }
#simulation_levels


make_techno_plot <- function(data,
                             y_dep,
                             y_lim,
                             y_lab,
                             show_legend = FALSE,
                             labels = NULL,
                             tex_labels = FALSE,
                             legend_ncol = 1) {
  
  if (is.null(labels)) {
    labels <- levels(data$Simulation)
  }
  
  if (tex_labels) {
    labels <- lapply(
      paste0("$\\lambda$ = ", labels),
      latex2exp::TeX
    )
  }
  
  simulation_levels <- data %>%  distinct(Simulation) %>%  pull(Simulation) %>%  { c(baseline_sim, setdiff(., baseline_sim)) }
  
  data %>%
    filter(!is.na(Simulation)) %>%
    ggplot(aes(x = MW_3, y = .data[[y_dep]], color = Simulation)) +
    geom_line(aes(linetype = Simulation), linewidth = 1.1) +
    geom_vline(
      xintercept = 1.04,
      linetype = "dotted",
      color = "gray",
      linewidth = 0.75
    ) +
    theme_classic() +
    coord_cartesian(xlim = c(1, max_x), ylim = y_lim) +
    guides(
      color = guide_legend(title = NULL, ncol = legend_ncol),
      linetype = guide_legend(title = NULL, ncol = legend_ncol)
    ) +
    labs(x = "Minimum wage / k", y = y_lab) +
    scale_colour_manual(
      values = cols,
      breaks = simulation_levels,
      labels = labels,
      drop = FALSE
    ) +
    scale_linetype_discrete(
      breaks = simulation_levels,
      labels = labels,
      drop = FALSE
    ) +
    theme(
      legend.position = if_else(show_legend, "right", "none"),
      legend.title = element_blank()
    )
}

# Numerical legend

plot_legend_tex <- make_techno_plot(
  TAB,
  y_dep = "OUTPUT",
  y_lim = c(12, 14),
  y_lab = "",
  show_legend = TRUE,
  tex_labels = TRUE,
  legend_ncol = 1
)

legend_tex <- cowplot::get_legend(plot_legend_tex)

ggsave(
  file.path(graph_dir, "Figure8_legend.pdf"),
  plot = legend_tex,
  width = 3,
  height = 1.5
)

# Legend in words

plot_legend_litt <- make_techno_plot(
  TAB,
  y_dep = "OUTPUT",
  y_lim = c(12, 14),
  y_lab = "",
  show_legend = TRUE,
  labels = leg_litt,
  legend_ncol = 1
)

legend_litt <- cowplot::get_legend(plot_legend_litt)

ggsave(
  file.path(graph_dir, "Figure8_legend_litt.pdf"),
  plot = legend_litt,
  width = 3,
  height = 1.5
)

# Figures

plots <- tribble(
  ~file,            ~y_dep,               ~y_lim,          ~y_lab,
  "Figure8_A.pdf",  "OUTPUT",             c(12, 14),       "Output",
  "Figure8_B.pdf",  "Q_PROD",             c(0.15, 0.19),   "Quantity-productivity index",
  "Figure8_C.pdf",  "OUTPUT_WORKERS",     c(0.205, 0.235), "Output per worker (in real terms)",
  "Figure8_D.pdf",  "SKILLS",             c(0.35, 1.1),    "Total amount of skills",
  "Figure8_E.pdf",  "MANAGERIAL_LAYERS",  c(1.3, 2.1),     "Average # layers"
)

pwalk(plots, function(file, y_dep, y_lim, y_lab) {
  p <- make_techno_plot(
    TAB,
    y_dep = y_dep,
    y_lim = y_lim,
    y_lab = y_lab,
    show_legend = FALSE
  )
  
  ggsave(
    file.path(graph_dir, file),
    plot = p,
    width = width,
    height = height
  )
})