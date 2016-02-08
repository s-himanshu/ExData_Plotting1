# Load the dataset .zip and unzip and subset by date
# 
# Author: Himanshu Singh
###############################################################################

setwd("C:/Coursera/ExData_Plotting1/")

library(httr) 

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filez <- "household_power_consumption.zip"
filezpath<- paste(getwd(),filez, sep = "/") 
if(!file.exists(filez)){
  print(paste("Downloading", file))
  download.file(fileUrl, filez)
}

#unzip and create folders (if required)
filed <- paste(getwd(), "household_power_consumption.txt", sep="/")
if(!file.exists(filed)){
  print("Unzipping file...")
  unzip(zipfile=filez, list = TRUE, overwrite = TRUE)
}
  
data1 <- read.table(file, header = TRUE, sep=";", na.strings = "?")
# Convert Time and Date, and subset 
data1$Time <- strptime(paste(data1$Date, data1$Time), "%d/%m/%Y %H:%M:%S")
data1$Date <- as.Date(data1$Date, "%d/%m/%Y")
fetch <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
data1 <- subset(data1, Date %in% fetch)
