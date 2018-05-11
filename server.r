library(shiny) 

TempConverter <- function(celsius) ( 1.8*celsius)+32 

shinyServer( 
  function(input, output) { 
  
    output$inputValue <- renderPrint({input$celsius})
   
    output$prediction <- renderPrint({TempConverter(input$celsius)}) 
    
    
   
  } 
) 
