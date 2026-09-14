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

baseline_sim <- "1.000; h = 0.193; c = 0.220; A = 0.240"

leg_litt <- c(
  "BASELINE",
  "Problem solving techno.",
  "Communication techno.",
  "Information techno.",
  "Output per pb solved"
)

prepare_tab <- function(path, bad_rule) {
  read_csv(path, show_col_types = FALSE) %>%
    distinct() %>%
    mutate(
      MW_2 = if_else(MW > 0, MW, K),
      MW_3 = MW_2 / K,
      
      Simulation = sprintf(
        "%.3f; h = %.3f; c = %.3f; A = %.3f",
        LAMBDA, H, C, A
      ),
      
      OUTPUT = OUTPUT * 100,
      bad_numeric = {{ bad_rule }},
      
      OUTPUT = if_else(bad_numeric, NA_real_, OUTPUT),
      
      Simulation = factor(
        Simulation,
        levels = {
          lev <- unique(Simulation)
          c(baseline_sim, setdiff(lev, baseline_sim))
        }
      )
    )
}

make_techno_plot <- function(data,
                             y_dep = "OUTPUT",
                             y_lim = c(12, 14.7),
                             y_lab = "Output",
                             show_legend = FALSE,
                             labels = NULL,
                             tex_labels = FALSE,
                             legend_ncol = 1) {
  
  simulation_levels <- levels(data$Simulation)
  
  if (is.null(labels)) {
    labels <- simulation_levels
  }
  
  if (tex_labels) {
    labels <- lapply(
      paste0("$\\lambda$ = ", labels),
      latex2exp::TeX
    )
  }
  
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
    labs(x = "Minimum wage / k", y = y_lab) +
    guides(
      color = guide_legend(title = NULL, ncol = legend_ncol),
      linetype = guide_legend(title = NULL, ncol = legend_ncol)
    ) +
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

save_legend <- function(data, file, labels = NULL, tex_labels = FALSE) {
  p <- make_techno_plot(
    data = data,
    y_lim = c(12, 14),
    y_lab = "",
    show_legend = TRUE,
    labels = labels,
    tex_labels = tex_labels,
    legend_ncol = 1
  )
  
  legend <- cowplot::get_legend(p)
  
  ggsave(
    file.path(graph_dir, file),
    plot = legend,
    width = 3,
    height = 1.5
  )
}

tabs <- list(
  A = prepare_tab(
    "Baseline Specification/Output/Figure8.csv",
    (C < 0.22 | LAMBDA > 1) & MW_3 >= 1.4
  ),
  B = prepare_tab(
    "Baseline Specification/Output/FigureF2_64.csv",
    H < 0.193 & MW_3 >= 1.4
  ),
  C = prepare_tab(
    "Baseline Specification/Output/FigureF2_96.csv",
    (H < 0.193 & MW_3 >= 1.4) |
      (C < 0.11 & MW_3 >= 1.3) |
      (LAMBDA > 2 & MW_3 >= 1.3)
  )
)

# Numerical legend

iwalk(tabs, function(tab, suffix) {
  save_legend(
    data = tab,
    file = paste0("FigureF2", suffix, "_legend.pdf"),
    tex_labels = TRUE
  )
})

# Legend in words

save_legend(
  data = tabs$A,
  file = "FigureF2_legend_litt.pdf",
  labels = leg_litt,
  tex_labels = FALSE
)

# Figures

iwalk(tabs, function(tab, suffix) {
  p <- make_techno_plot(
    data = tab,
    y_lim = c(12, 14.7),
    y_lab = "Output",
    show_legend = FALSE
  )
  
  ggsave(
    file.path(graph_dir, paste0("FigureF2_", suffix, ".pdf")),
    plot = p,
    width = width,
    height = height
  )
})