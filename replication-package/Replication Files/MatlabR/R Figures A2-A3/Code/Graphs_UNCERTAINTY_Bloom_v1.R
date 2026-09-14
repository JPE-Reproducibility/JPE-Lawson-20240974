library(openxlsx)
library(tidyverse)
library(grid)
library(gridExtra) 
library(cowplot)
library(plotly)
# https://www.policyuncertainty.com/all_country_data.html
# Downloaded 25/03/2025

graph_dir <- "R Figures A2-A3/Output"

# Data loading

TAB <- read.csv("R Figures A2-A3/Data/epu_all_country_2025-03-25.csv")

plot_UNCERTAIN <- TAB %>%
  mutate(Date = as.Date(paste(Year, Month, "01", sep = "-"))) %>%
  select(Date, France, Germany, US, UK, Spain, Italy) %>%
  pivot_longer(cols = c("France", "Germany", "US", "UK", "Spain", "Italy"),
               names_to = "Country", values_to = "Value") %>%
    ggplot(aes(x = Date, y = Value)) +
    geom_line(color = "steelblue") +
  geom_vline(xintercept = as.Date("1998-01-01"), linetype = "dashed", color = "green") +
  geom_vline(xintercept = as.Date("2003-01-01"), linetype = "dashed", color = "red") +
  geom_vline(xintercept = as.Date("2006-01-01"), linetype = "dashed", color = "red") +
    #geom_point() +
   facet_wrap(~Country) +  # chaque graphique a son axe Y propre
  #  facet_wrap(~Country, scales = "free_y") +  # chaque graphique a son axe Y propre
    labs(#title = " volution des indices dans le temps",
         x = " ",
         y = " ") +
    theme_minimal()
  

plot_UNCERTAIN

ggsave(file.path(graph_dir, "EPU_v1.pdf"), plot = plot_UNCERTAIN,  width = 10, height = 6)

