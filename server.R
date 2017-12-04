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
server <- function(input, output) {
  
  output$myPrincipal <- renderText(input$Principal)
  output$myInterest <- renderText(input$Interest)
  output$myYears <- renderText(input$Years)
  #The Formula to TVM on future pricing is: FI = Principal*e^(i*t)
  #Interest rate is per annum. 
  #Time can be years or months. THe interest rate will have to be adjusted accordingly
  output$myfunction <- renderPrint({input$Principal * exp((input$Interest/100)*input$Years)})
}

