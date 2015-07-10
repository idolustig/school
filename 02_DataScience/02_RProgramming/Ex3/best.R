best <- function(state, outcome) {
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
    ## Return hospital name in that state with lowest 30-day death

    ## filter only the relevant state
    data<-fl[ fl$State == state, ]

    ## T/F for numeric convertable
    suppressWarnings(data_cl <- !is.na(as.numeric(data[,cl])))
    ## keep only real numbers rows
    data<-data[data_cl,]
    ##get numbers vector
    v<-as.numeric(data[,cl])
    ##find min rows
    rows<-which(v==min(v))
    hospital<-data[rows,2]
    hospital<-sort(hospital)
    
    ## rate
    hospital[1]

}