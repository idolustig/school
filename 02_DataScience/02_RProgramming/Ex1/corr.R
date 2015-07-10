corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    ## NOTE: Do not round the result!
    

    filenames <- list.files(paste(getwd(), "/", directory, sep=""), pattern="*.csv", full.names=TRUE)
    
    v <- numeric()
    
    for (fl in filenames) {

        DT <- read.csv(fl)
        if (sum(complete.cases(DT)) <= threshold) next
        #print(cor(DT$sulfate, DT$nitrate, use="complete.obs"))
        v <- c(v, cor(DT$sulfate, DT$nitrate, use="complete.obs"))
    }    
    
    v
    
}