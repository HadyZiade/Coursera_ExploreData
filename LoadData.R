
date_time <- function(date, time) {
        return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}

LoadData <- function() {
        rawdata<- read.table("household_power_consumption.txt",header=TRUE,
                             colClasses=c("character", "character", rep("numeric",7)),
                             sep=";",na="?")
        rawdata$Time <- strptime(paste(rawdata$Date, rawdata$Time), "%d/%m/%Y %H:%M:%S")
        rawdata$Date <- as.Date(rawdata$Date, "%d/%m/%Y")
        FilterDates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
        df <- subset(rawdata, Date %in% FilterDates)
        return (df)
}