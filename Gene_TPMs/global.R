library(shiny)
library(ggplot2)
library(dplyr)
library(readr)
library(plotly)
library(tidyr)
# Load Data
TPMs <- read_csv("TPMs_table_100genes.csv")
FLYBASE_NAMES <- read_csv("Table_Symbl_Gene.csv")
# Pivot to long format
TPMs_long <- pivot_longer(TPMs, cols = 2:7, names_to = 'Condition', values_to = "Reads")
TPMs_names <- TPMs_long[1] %>% unique()
# Remove the old data_frame to conserve space
remove(TPMs)