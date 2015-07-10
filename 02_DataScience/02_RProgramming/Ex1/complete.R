complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
    LST<-data.frame(id= character(0), nobs= integer(0))
    
    for (i in id) {
        fl <- paste (getwd(), "/", directory, "/", formatC(i, width=3, flag="0"), ".csv", sep="")
        DT <- read.csv(fl)
        LST <- rbind(LST, data.frame(id = as.character(i), nobs = as.integer(sum(complete.cases(DT)))))
    }    
    
    LST
    
}