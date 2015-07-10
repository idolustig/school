pollutantmean <- function(directory, pollutant="sulfate", id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    ## NOTE: Do not round the result!
    
    if (length(id)==0) return(NA)
    
    fl<-paste (getwd(), "/", directory, "/", formatC(id[1], width=3, flag="0"), ".csv", sep="")
    DT<-read.csv(fl)
    
    i=2
    while (i<=length(id)) {
        fl<-paste (getwd(), "/", directory, "/", formatC(id[i], width=3, flag="0"), ".csv", sep="")
        DT<-rbind(DT,read.csv(fl))
        i<-i+1
    }

    if(pollutant=="sulfate") mean(DT$sulfate, na.rm=T)
    else if (pollutant=="nitrate") mean(DT$nitrate, na.rm=T)
    
}