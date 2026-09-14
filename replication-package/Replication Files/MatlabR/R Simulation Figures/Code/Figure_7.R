rm(list = names(Filter(is.data.frame, as.list(.GlobalEnv))))

packages <- c(
  "openxlsx", "tidyverse", "grid", "gridExtra",
  "cowplot", "plotly", "latex2exp", "sjmisc"
)

invisible(lapply(packages, library, character.only = TRUE))

width  <- 6
height <- 4.5
max_x  <- 1.45

graph_dir <- "R Simulation Figures/Output"

leg <- c(
  "Contribution of survivors",
  "Contrib. change in [performance indicator] \namong survivors",
  "Contrib. reallocation across survivors",
  "Contribution of entrants",
  "Contribution of exiters"
)

cols <- c("black", "grey50", "grey25", "red", "orange")
types <- c("solid", "dotted", "dotted", "solid", "solid")

component_order <- c(
  "survivors",
  "survivors (contribution of change)",
  "survivors (reallocation)",
  "entrants",
  "exiters"
)

TAB <- read_csv("Baseline Specification/Output/Figure7.csv", show_col_types = FALSE) %>%
  sjmisc::rotate_df(cn = TRUE) %>%
  rename(MW_K = `Minimum Wage/k`) %>%
  pivot_longer(
    cols = -MW_K,
    names_to = "Indicators",
    values_to = "val_indic"
  ) %>%
  mutate(
    val_indic = coalesce(val_indic, 0)
  )

make_decomposition_plot <- function(tab, indicator, show_legend = FALSE) {
  
  indicator_levels <- paste("Change in", indicator, "for", component_order)
  
  tab %>%
    filter(Indicators %in% indicator_levels) %>%
    mutate(
      Indicators = factor(Indicators, levels = indicator_levels)
    ) %>%
    ggplot(aes(x = MW_K, y = val_indic, color = Indicators)) +
    geom_line(aes(linetype = Indicators), linewidth = 1.1) +
    theme_classic() +
    coord_cartesian(xlim = c(1, max_x)) +
    labs(x = "Minimum wage / k", y = "") +
    scale_colour_manual(values = cols, labels = leg, name = "") +
    scale_linetype_manual(values = types, labels = leg, name = "") +
    theme(
      legend.title = element_blank(),
      legend.position = if_else(show_legend, "right", "none")
    )
}

plot_revenue_worker <- make_decomposition_plot(
  TAB,
  indicator = "revenue per worker",
  show_legend = FALSE
)

ggsave(
  file.path(graph_dir, "Fig7_B.pdf"),
  plot = plot_revenue_worker,
  width = width,
  height = height
)

plot_profit <- make_decomposition_plot(
  TAB,
  indicator = "average profit",
  show_legend = FALSE
)

ggsave(
  file.path(graph_dir, "Fig7_A.pdf"),
  plot = plot_profit,
  width = width,
  height = height
)

plot_profit_legend <- make_decomposition_plot(
  TAB,
  indicator = "average profit",
  show_legend = TRUE
)

legend <- cowplot::get_legend(plot_profit_legend)

ggsave(
  file.path(graph_dir, "Fig7_legend.pdf"),
  plot = legend,
  width = 3,
  height = 1.3
)
