##Plot1

epow <- read.table(file = "C:/Users/aduranap/Documents/Curso R/Curso 4/household_power_consumption.txt", header = TRUE, sep = ";")

library(readxl)
X3_Electric_power_consumption <- read_excel("Curso R/Curso 4/3.Electric power consumption.xlsx", 
                                            col_types = c("date", "numeric", "numeric", 
                                                          "numeric", "numeric", "numeric", 
                                                          "numeric", "numeric", "numeric"))
View(X3_Electric_power_consumption)

hist(X3_Electric_power_consumption$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylim = c(0,15000),col = "red")

dev.copy(png, file = "plot1.png", height =480, width =480)

dev.off()