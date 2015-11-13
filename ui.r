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
                    value = 238
                    ),
        radioButtons("gender", "Gender",
                 list("Male" = "Man",
                      "Female" = "Woman")
                      )
        ),
    
    mainPanel(
        tabsetPanel(
            tabPanel("Plot", plotOutput("distPlot")), 
            tabPanel("Documentation",p('This small application can predict 
                                        stature of a person by the length of the
                                        foot. You should just shoose the gender
                                        and adjust slider according to the foot 
                                        length. Big green dot shows the prediction.'),
                     p('The data is provided by Department of Statistics   
                        of University of Florida. Data set can be found at
                       http://www.stat.ufl.edu/~winner/datasets.html.')) 
            ))
        
                    ) 
            )#theme
            
        )