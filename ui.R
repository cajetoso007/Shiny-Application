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
ui <- fluidPage(
  
  # Application title
  titlePanel("TVM Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput("Principal", "Enter your Principal Investment Amount", ""),
      numericInput("Interest", "Enter Your desired Interest rate", ""),
      numericInput("Years", "Number of Periods Amount Invested", ""),
      
      h1("The value fo your investement is: ")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      ("Investment Information"),
      
      textOutput("myPrincipal"),
      textOutput("myInterest"),
      textOutput("myYears"),
      h1("The Value of your investment will be: "),
      textOutput("myfunction")
      
    )
  )
)
