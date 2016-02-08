# 
# 
# Author: Himanshu Singh
###############################################################################

setwd("C:/Coursera/ExData_Plotting1/")

source("Load.R")

library(grDevices)
plot2 <- paste(getwd(), "plot2.png", sep = "/")
if(!file.exists(plot2)){
  png("plot2.png", width = 480, height = 480)
  plot(data1$Time, data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(data1$Time, data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}


