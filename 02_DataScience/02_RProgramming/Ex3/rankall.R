rankall <- function(outcome, num = "best") {
    
    ## Read outcome data
    data<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    ## Check that state and outcome are valid

    if (!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
        stop("invalid outcome")
    } else {
        p <- data.frame(param = c("heart attack", "heart failure", "pneumonia"), 
                        val=c(11,17,23))
        cl <-p$val[p$param==outcome]
    }
    
    ## For each state, find the hospital of the given rank
    
    ## convert to numbers
    data[,cl]<-suppressWarnings(as.numeric(data[,cl]))
    
    data <- data[order(data[7], data[cl], data[2], na.last=NA),]
    data <- data[!is.na(outcome)]
    
    l <- split(data[,2], data[7])

    rankHospitals <- function(x, num) {
        if (num=="best") {
            head(x, 1)
        } else if (num=="worst") {
            tail(x, 1)
        } else {
            x[num]
        }
    }
    
    result <- lapply(l, rankHospitals, num)
    
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name    
    data.frame(hospital = unlist(result), state = names(result), row.names = names(result))
    
}
