# 
# 
# Author: Himanshu Singh
###############################################################################

setwd("C:/Coursera/ExData_Plotting1/")

source("Load.R")

library(grDevices)
plot1 <- paste(getwd(), "plot1.png", sep = "/")
if(!file.exists(plot1)){
  png("plot1.png", width = 480, height = 480)
  hist(data1$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
} else {
  hist(data1$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}


