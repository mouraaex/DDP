#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$ui1 = renderUI({
        dice = sample(c(1,2,3,4,5,6), size = input$slider1, replace = T)
        y = table(dice)/length(dice)
        HTML(paste0(sprintf("Face %s: %.6f", 1:6, y), 
                    collapse = "<br/>"))
    })
    
    output$text1 = renderText({
        input$slider1
    })
    
})
