#Plot2

setwd("C:/Users/aduranap/Documents/Curso R/Curso 4/")
epow <- read.csv("household_power_consumption.txt",header = TRUE, sep = ";", na.strings = "?", nrows = 2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
selec1 <- subset(epow, Date %in% c("1/2/2007", "2/2/2007"))
DateTime <- strptime(paste(selec1$Date, selec1$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
selec1 <- cbind(DateTime, selec1)

plot(selec1$DateTime,selec1$Global_active_power, type= "l", col = "black", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", height =480, width =480)
dev.off()
