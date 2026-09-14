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
  "SKILLS", "OUTPUT_WORKERS", "Q_PROD", "ALPHA_BAR",
  "REVENUE_WORKERS"
)

colors <- c(
  "black", "red", "blue", "green", "gray33",
  "orange", "darkviolet", "darkgreen", "aquamarine"
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

make_plot <- function(tab) {
  tab %>%
    filter(Indicators %in% indicators_to_plot) %>%
    ggplot(aes(x = MW_K, y = val_indic)) +
    geom_line(aes(linetype = Indicators, color = Indicators), linewidth = 1.1) +
    theme_classic() +
    coord_cartesian(xlim = c(1, max_x), ylim = c(0.75, 1.25)) +
    labs(x = "Minimum wage / k", y = "") +
    theme(legend.position = "none") +
    scale_colour_manual(values = colors) +
    geom_vline(
      xintercept = 1.04,
      linetype = "dotted",
      color = "gray",
      linewidth = 0.75
    )
}

figures <- tribble(
  ~input, ~output,
  "Sensitivity Specifications/Sensitivity (i) - 1+ Only/Output/FigureG1_A.csv",
  "Figure_G1A.pdf",
  
  "Sensitivity Specifications/Sensitivity (ii) - GM6 & 1+/Output/FigureG1_B.csv",
  "Figure_G1B.pdf",
  
  "Sensitivity Specifications/Sensitivity (iii) - SelfEmployment, 1+ Only/Output/FigureG1_C.csv",
  "Figure_G1C.pdf",
  
  "Sensitivity Specifications/Sensitivity (iv) - SelfEmployment, GMR6 & 1+/Output/FigureG1_D.csv",
  "Figure_G1D.pdf",
  
  "Sensitivity Specifications/Sensitivity (v) - Hours Calibration/Output/FigureG1_E.csv",
  "Figure_G1E.pdf",
  
  "Sensitivity Specifications/Sensitivity (vi) - Kaitz Calibration/Output/FigureG1_F.csv",
  "Figure_G1F.pdf",
  
  "Sensitivity Specifications/Sensitivity (vii) - Mean Ratio Calibration/Output/FigureG1_G.csv",
  "Figure_G1G.pdf"
)

pwalk(figures, function(input, output) {
  prepare_tab(input) %>%
    make_plot() %>%
    ggsave(
      filename = file.path(graph_dir, output),
      plot = .,
      width = width,
      height = height
    )
})