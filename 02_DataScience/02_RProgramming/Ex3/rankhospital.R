rankhospital <- function(state, outcome, num = "best") {
    ## Read outcome data
    fl<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    ## Check that state and outcome are valid
    if (!state %in% fl$State) stop("invalid state")
    
    if (!outcome %in% c("heart attack", "heart failure", "pneumonia")) {
        stop("invalid outcome")
    } else {
        p <- data.frame(param = c("heart attack", "heart failure", "pneumonia"), 
                        val=c(11,17,23))
        cl <-p$val[p$param==outcome]
    }

    ## Return hospital name in that state with the given rank
    data<-fl[ fl$State == state, ]
    
    ## T/F for numeric convertable
    suppressWarnings(data_cl <- !is.na(as.numeric(data[,cl])))
    ## keep only real numbers rows
    data<-data[data_cl,] 
    ## convert to numbers
    data[,cl]<-as.numeric(data[,cl])
    
    ##sort by rank,name
    data <- data[order(data[cl], data[2]),]
    
    if(num=="best") n<-1
    else if (num=="worst") n<-nrow(data)
    else if (!is.na(as.integer(num))) n<-as.integer(num)
    else stop("invalid rank")
    
    if (n>nrow(data)) return (NA)

    ## 30-day death rate
    data[n,2]    

    

}