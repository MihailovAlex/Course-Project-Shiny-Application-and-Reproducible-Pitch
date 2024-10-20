library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("Prediction of the type of iris"),
    
    sidebarLayout(
        sidebarPanel(
            numericInput("sepalLength", "Sepal.Length:", value = 5.0),
            numericInput("sepalWidth", "Sepal.Width:", value = 3.5),
            numericInput("petalLength", "Petal.Length:", value = 1.5),
            numericInput("petalWidth", "Petal.Width:", value = 0.2),
            actionButton("predict", "Predict sort")
        ),
        
        mainPanel(
            textOutput("predictionResult")
        )
    )
    )
)