library(shiny) 
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("readable"), pageWithSidebar(
    
    
    
    headerPanel("Predicting stature with foot length"), 
    
    sidebarPanel(
        h4('Parameters of prediction'), 
        sliderInput("foot_length", 
                    "Foot length", 
                    min = round(min(data$foot_length),0),
                    max = round(max(data$foot_length),0), 
                    value = round(median(data$foot_length),0)
                    ),
        radioButtons("gender", "Gender",
                 list("Male" = "Male",
                      "Female" = "Female")
                      )
        ),
    
    mainPanel(
        h3('PREDICTION'),
        plotOutput("distPlot")
        
            ) 
        
            
                    )
                ) #theme
    )
