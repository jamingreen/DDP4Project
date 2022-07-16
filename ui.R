
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("DDP Week4 project"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            # Get input "mean"
            textInput("mu", "mean", value = 0),
            
            # Get standard deviation
            textInput("sd", "standard deviation", value = 1)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("sen"),
            plotOutput("plot1")
        )
    )
))
