library(shiny) 


shinyUI( 
  pageWithSidebar( 
    headerPanel("Celsius to Fahrenheit Converter"), 
    
    sidebarPanel( 
     
      numericInput('celsius','Choose the temperature in Celsius:',0,min = -25,max = 100,step = 1),
      submitButton('Submit')
      
    ), 
    mainPanel( 
      # h3('Convert to Celsius'), 
      h3('Convert to Fahrenheit'),
    
      h4('You entered this temperature in Celsius:'),
      verbatimTextOutput("inputValue"), 
     
      h4('which equals to this temperature in Fahrenheit:'), 
      verbatimTextOutput("prediction")
      
    ) 
  ) 
) 
