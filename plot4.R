
png(filename = "plot4.png", width = 480, height = 480)
par(mfcol = c(2,2))
## create plot at the upper left corner
plot(myData$date_time, myData$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")

## create plot at the bottom left corner
plot(myData$date_time, myData$Sub_metering_1, type="l", xlab = "", ylab = "Engery sub metering")
lines(myData$date_time, myData$Sub_metering_2, type="l", col="red")
lines(myData$date_time, myData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col=c("black","red","blue"))

## create plot at the upper right corner
plot(myData$date_time, myData$Voltage, type="l", xlab = "datetime", ylab = "Voltage")

## create plot at the bottom right corner
plot(myData$date_time, myData$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()