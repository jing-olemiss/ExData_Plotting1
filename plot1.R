## Read data
data <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F, na.strings="?")
data$Date <- as.Date(data$Date, "%d/%m/%Y") ##Convert date from "character" to "Date"
## Create a dataframe by filtering the date 02/01/2007 or 02/02/2007
myData <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")

## convert global active power data into numeric
myData$Global_active_power <- as.numeric(myData$Global_active_power)

##create histgram plot
png(filename = "plot1.png", width = 480, height = 480)
hist(myData$Global_active_power, col='red', main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()

