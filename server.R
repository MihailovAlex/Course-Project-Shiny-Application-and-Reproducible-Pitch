library(shiny)
library(ggplot2)
library(dplyr)
library(rsconnect)
library(randomForest)

# Select columns to be used in the analysis
ir <- iris
set.seed(42)

model <- randomForest(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris)

# Define server 
shinyServer(function(input, output) {
    observeEvent(input$predict, {
        new_data <- data.frame(
            Sepal.Length = input$sepalLength,
            Sepal.Width = input$sepalWidth,
            Petal.Length = input$petalLength,
            Petal.Width = input$petalWidth
        )
        
        prediction <- predict(model, new_data)
        
        output$predictionResult <- renderText({
            paste("Predict sort:", prediction)
        })
    })
}
)

