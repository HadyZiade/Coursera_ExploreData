source("LoadData.R")

dataset <- LoadData()
png("plot3.png", width=400, height=400)

plot(dataset$Time, dataset$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(dataset$Time, dataset$Sub_metering_2, col="red")
lines(dataset$Time, dataset$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

dev.off()