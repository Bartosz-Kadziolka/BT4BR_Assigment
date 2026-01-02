library(shiny)
library(plotly)
# Define UI for application that draws a plotly plot
fluidPage(

    # Application title
    titlePanel("TPMs in D. Melanogaster genes"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput(
              inputId = "selectedGene_1", label = "Gene 1",
              choices = TPMs_names,
              selected = NULL
            ),
            selectInput(
              inputId = "selectedGene_2", label = "Gene 2",
              choices = TPMs_names,
              selected = NULL
            )
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotlyOutput("genePlot", height = 800)
        )
    )
)
