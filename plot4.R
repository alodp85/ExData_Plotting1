##Plot4

setwd("C:/Users/aduranap/Documents/Curso R/Curso 4/")
epow <- read.csv("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?", nrows = 2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
selec1 <- subset(epow, Date %in% c("1/2/2007", "2/2/2007"))
DateTime <- strptime(paste(selec1$Date, selec1$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
selec1 <- cbind(DateTime, selec1)

columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

png("plot4.png", width = 480, height = 480)

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(selec1$DateTime, selec1$Global_active_power, type="l", col="green", xlab="", ylab="Global Active Power")
plot(selec1$DateTime, selec1$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(selec1$DateTime, selec1$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(selec1$DateTime, selec1$Sub_metering_2, type = "l", col = "red")
lines(selec1$DateTime, selec1$Sub_metering_3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), cex= 0.8)

plot(selec1$DateTime, selec1$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")

dev.off()
