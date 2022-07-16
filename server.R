library(shiny)
library(ggplot2)
shinyServer(function(input, output) {

    output$plot1 <- renderPlot({

        # Get mm(0,1ean and sd value
        mu <- as.numeric(input$mu)
        sd <- as.numeric(input$sd)

        # draw the normal distribution
        g <- ggplot(data.frame(x= c(mu-3*sd, mu+3*sd)), aes(x)) +
            geom_function(fun = dnorm, args = list(mean = mu, sd = sd)) +
            xlim(mu-3,mu+3)
        print(g)

    })
    
    # Render description of the normal distribution
    output$sen <- renderText({
        
        mu <- input$mu
        sd <- input$sd
        
        paste("Normal Distribution with mean =",as.character(mu),"and standard deviation =", as.character(sd))
        
    })

})
