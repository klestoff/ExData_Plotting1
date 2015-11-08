readData <- function(filename) {
    if (file.exists(filename)) {
        csv    <- file(filename, "r")
        result <- NA
        repeat {
            line <- try(read.csv(csv, header = !is.data.frame(result), sep = ";" , nrows = 1000), TRUE)
            if (!is.data.frame(line)) {
                break()
            }
            
            if (!is.data.frame(result)) {
                result <- line[FALSE, ]
            } else {
                colnames(line) <- colnames(result)
            }
            
            line <- line[as.Date(line$Date, '%d/%m/%Y') %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")), ]
            
            if (nrow(line) > 0) {
                result <- rbind(result, line)
            } else if (nrow(result) > 0) {
                break()    
            }
        }
        close(csv)
        
        result
    } else {
        NA
    }
}