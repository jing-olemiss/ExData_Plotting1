
## create line plot
png(filename = "plot3.png", width = 480, height = 480)
plot(myData$date_time, myData$Sub_metering_1, type="l", xlab = "", ylab = "Engery sub metering")
lines(myData$date_time, myData$Sub_metering_2, type="l", col="red")
lines(myData$date_time, myData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col=c("black","red","blue"))
dev.off()

