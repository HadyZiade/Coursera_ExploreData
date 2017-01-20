source("LoadData.R")

dataset <- LoadData()
png("plot1.png",width=400,height=400)
hist(dataset$Global_active_power,main="Global Active Power"
     ,xlab="Global Active Power(kilowatts)"
     ,col="red")
dev.off()