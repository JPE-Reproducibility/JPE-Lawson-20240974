#library(openxlsx)
library(readxl)
library(tidyverse)
library(grid)
library(gridExtra) 
library(cowplot)
library(plotly)

# Source of data:
# https://www.strategie-plan.gouv.fr/publications/mission-bozio-wasmer-politiques-dexonerations-de-cotisations-sociales-une-inflexion
# Accessed 29/08/2026

graph_dir <- "R Figures A2-A3/Output"

# Data loading

all_data <- read.csv("R Figures A2-A3/Data/kaitz_gr10_source_matrix.csv", header = TRUE)
TAB <- all_data[1:20, 1:8]

colnames(TAB) <- c("Year", "Belgium", "Germany", "Spain", "France", "UK", "Netherlands", "US")

  TAB_long <- TAB %>%
  pivot_longer(cols = -Year, names_to = "Country", values_to = "Value") %>%
  mutate(size = ifelse(Country == "France", 1.2, 0.6))

# Graph

plot_KAITZ1 <- ggplot(TAB_long, aes(x = Year, y = Value, group = Country)) +
  geom_line(aes(color = Country, size = size)) +
  scale_color_manual(values = c("France" = "red", 
  "Belgium" = "blue", "Germany" = "green", "Spain" = "grey", "UK" = "pink",
  "Netherlands" = "orange", "US" = "black")) +
  scale_size_identity() +
  theme_minimal(base_size = 11) +
  labs(
    #title = " ",
    x = "",
    y = "Kaitz index",
    color = " "
  ) +
  theme(
    legend.position = "bottom",
    #legend.direction = "horizontal",              # 🔸 Légende sur une ligne
    legend.text = element_text(size = 9),        # 🔸 Taille du texte
    legend.title = element_text(size = 9),       # 🔸 Taille du titre si utilisé
    legend.key.width = unit(1, "cm")            # 🔸 (Optionnel) largeur des cases légende
  )

ggsave(file.path(graph_dir, "KAITZ_COSTS.pdf"), plot = plot_KAITZ1,  width = 8, height = 6)


# Data loading

all_data <- read.csv("R Figures A2-A3/Data/kaitz_gr10_source_matrix.csv", header = TRUE)
TAB <- all_data[1:20, 10:17]

colnames(TAB) <- c("Year", "Belgium", "Germany", "Spain", "France", "UK", "Netherlands", "US")
  
  TAB_long <- TAB %>%
  pivot_longer(cols = -Year, names_to = "Country", values_to = "Value") %>%
  mutate(size = ifelse(Country == "France", 1.2, 0.6))

# Graph

plot_KAITZ2 <- ggplot(TAB_long, aes(x = Year, y = Value, group = Country)) +
  geom_line(aes(color = Country, size = size)) +
  scale_color_manual(values = c("France" = "red", 
                                "Belgium" = "blue", "Germany" = "green", "Spain" = "grey", "UK" = "pink",
                                "Netherlands" = "orange", "US" = "black")) +
  scale_size_identity() +
  theme_minimal(base_size = 11) +
  labs(
    #title = " ",
    x = "",
    y = "Kaitz index",
    color = " "
  ) +
  theme(
    legend.position = "bottom",
    #legend.direction = "horizontal",              # 🔸 Légende sur une ligne
    legend.text = element_text(size = 9),        # 🔸 Taille du texte
    legend.title = element_text(size = 9),       # 🔸 Taille du titre si utilisé
    legend.key.width = unit(1, "cm")            # 🔸 (Optionnel) largeur des cases légende
  )

ggsave(file.path(graph_dir, "KAITZ_INCOME.pdf"), plot = plot_KAITZ2,  width = 8, height = 6)
