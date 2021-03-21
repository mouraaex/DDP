#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Dice rolls Probability"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h1("Number of dice rolls!"),
            sliderInput("slider1", "move the slider", 100, 200000, 100),
            br(),
            p(strong(em("Documentation:",a("Shiny app documentation",
                        href="https://mouraaex.github.io/DDP/DDPdoc.html"))))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3 ("Number of dice rolls"),
            textOutput("text1"),
            h3 ("Probabilities"),
            uiOutput("ui1")
        )
    )
))
