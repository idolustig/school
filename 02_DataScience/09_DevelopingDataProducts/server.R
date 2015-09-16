library(shiny)
source("lottery.R")

# Read data and convert date type
data <- readLotteryData()

# Sever logic
shinyServer(function(input, output) {
        
        # get the desiered data frame (dates range)
        useData <- reactive ({
               updateData(data, as.Date(input$timeline[1]),
                                     as.Date(input$timeline[2]))
         })
        
        # get the most frequent numbers
        counts <- reactive ({
                calcFreq(useData())
        })
        
        # most frequent numbers header
        output$topstext <- renderText({
                paste ('Top ', input$tops, 
                       ' most frequet numbers in the selected timeframe')
        })
        
        # output - raw data table        
        output$subsetData <- renderDataTable({
                useData()
        })
        
        # output - most frequent numbers
        output$topNums <- renderTable({
                head(counts(),input$tops)
        })
        
        # output - frequency plot
        output$numbersPlot <- renderPlot({
                plot(counts(), xlab='Drawn Number', ylab='Frequency')                
        })
        
})

