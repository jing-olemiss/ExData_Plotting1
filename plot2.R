
## convert character to time format
myData$date_time <- paste(myData$Date, myData$Time, sep= " ")
myData$date_time <- strptime(myData$date_time, "%Y-%m-%d %H:%M:%S")

## create line plot
png(filename = "plot2.png", width = 480, height = 480)
plot(myData$date_time, myData$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

