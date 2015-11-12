library(shiny)
library(ggplot2)

fit <- lm(stature ~ ., data)

shinyServer(
    function(input, output) {
        
        output$distPlot <- renderPlot({
            p <- qplot(foot_length, stature, data=data, geom=c("point", "smooth"),  
                       method="lm", formula=y~x, color=gender)
            gender <- input$gender
            fl <- input$foot_length
            new <- data.frame("gender"=gender, "foot_length"=fl)
            new[,1]<- as.factor(new[,1])
            y<-as.numeric(predict(fit, new))
            p + geom_point(aes(fl, y), color="green", size=5)
            
        #output$documentaion <- renderPrint({ "TEST" })
           
        
        
        
    } ) } )