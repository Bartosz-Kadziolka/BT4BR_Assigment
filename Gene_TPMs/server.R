library(shiny)
library(ggplot2)
library(dplyr)
library(readr)
library(plotly)
# Define server logic required to draw a histogram
function(input, output, session) {
  # Load Data
  TPMs <- read_csv("TPMs_table_100genes.csv")
  FLYBASE_NAMES <- read_csv("Table_Symbl_Gene.csv")
  # Pivot to long format
  TPMs_long <- pivot_longer(TPMs, cols = 2:7, names_to = 'Condition', values_to = "Reads")
  TPMs_names <- TPMs_long[1] %>% unique()
  # Remove the old data_frame to conserve space
  remove(TPMs)
  
    output$genePlot <- renderPlotly({
      gene_1_val <- subset(TPMs_long, TPMs_long$GeneID == input$selectedGene_1)
      gene_2_val <- subset(TPMs_long, TPMs_long$GeneID == input$selectedGene_2)
      
      #gene_1_val <- subset(TPMs_long, TPMs_long$GeneID == 'FBgn0000003')
      #gene_2_val <- subset(TPMs_long, TPMs_long$GeneID == 'FBgn0000008')
      plot_data <- rbind(gene_1_val, gene_2_val) 
      
      plot_data <- full_join(plot_data, FLYBASE_NAMES, by = c("GeneID"="FLYBASE")) %>% drop_na()
      
      myplot <- ggplot(plot_data, aes(x = GeneID, y= Reads, fill = GENENAME)) +
        geom_col(position = position_dodge()) +
        facet_wrap(~ Condition, scales = "free") +
        labs(
          x = NULL,
          y = NULL,
          title = sprintf("Expression of genes %s and %s", input$selectedGene_1, input$selectedGene_2)
        )
      myplot
    ggplotly(myplot)
    })

}
