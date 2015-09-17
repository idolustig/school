library (plyr)
# Read data function
readLotteryData <- function () {
        headerNames <-c("lotteryId","lotteryDate","one","two","three","four","five",
                        "six","extraNum","winnersNumRegular","winnersNumDouble")
		csvUrl <- 'http://www.pais.co.il/Lotto/Pages/last_Results.aspx?download=1'
        data <- read.csv(csvUrl, header=FALSE, col.names=headerNames, skip=1)
        data$lotteryDate <- as.Date(data$lotteryDate, "%d/%m/%y")
        return(data)
}

# Subset data function
updateData <- function(data,startDate,endDate) {
        subsetData <- data[data$lotteryDate >= as.Date(startDate) &
                                   data$lotteryDate<=as.Date(endDate),]
        return (subsetData)
}

# Get most frequent numbers function
calcFreq <- function(subsetData) {
        numbers <- c(subsetData$one, subsetData$two, subsetData$three, 
                     subsetData$four, subsetData$five, subsetData$six)
        
        counts <- count(numbers)
        counts <- counts[order(-counts$freq),]     
        names(counts) <- c("Number","Frequency")
        return (counts)
}
