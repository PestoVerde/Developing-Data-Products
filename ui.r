library(shiny) 
library(shinythemes)

shinyUI(fluidPage(theme = "bootstrap.min.css", 
                  
                  
    pageWithSidebar(
    
    
    
    titlePanel("Predicting stature with foot length"), 
    
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
        tabsetPanel(
            tabPanel("Plot", plotOutput("distPlot")), 
            tabPanel("Documentation", p('some ordinary text')) 
            ))
        
                    ) 
            )#theme
            
        )