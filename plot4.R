# 
# 
# Author: Himanshu Singh
###############################################################################

setwd("C:/Coursera/ExData_Plotting1/")

source("Load.R")

library(grDevices)
plot4 <- paste(getwd(), "plot4.png", sep = "/")
if(!file.exists(plot4)){
  png("plot4.png", width = 480, height = 480)
  par(mfrow=c(2,2))	
  plot(data1$Time, data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(data1$Time, data1$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(data1$Time, data1$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(data1$Time, data1$Sub_metering_2, type="l", col="red")
  lines(data1$Time, data1$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(data1$Time, data1$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")  
  dev.off()
} else {
  plot(data1$Time, data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(data1$Time, data1$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(data1$Time, data1$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(data1$Time, data1$Sub_metering_2, type="l", col="red")
  lines(data1$Time, data1$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(data1$Time, data1$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")  
}


