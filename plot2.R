source("LoadData.R")

dataset <- LoadData()
png("plot2.png", width=400, height=400)
plot(dataset$Time,dataset$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off ()
