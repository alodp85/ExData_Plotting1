##Plot3

setwd("C:/Users/aduranap/Documents/Curso R/Curso 4/")
epow <- read.csv("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?", nrows = 2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

selec1 <- subset(epow, Date %in% c("1/2/2007", "2/2/2007"))
DateTime <- strptime(paste(selec1$Date, selec1$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
selec1 <- cbind(DateTime, selec1)

columnlines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

png("plot3.png", width = 480, height = 480)
plot(selec1$DateTime, selec1$Sub_metering_1, type="l", col=columnlines[1], xlab="", ylab="Energy sub metering")
lines(selec1$DateTime, selec1$Sub_metering_2, col=columnlines[2])
lines(selec1$DateTime, selec1$Sub_metering_3, col=columnlines[3])

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()