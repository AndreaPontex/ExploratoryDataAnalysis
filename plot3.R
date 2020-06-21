#Setting Workind Directory
setwd("C:/Users/ACER/Desktop/Internado/Coursera/Exploratory Data Analysis")
#Reading dataset
data<- read.csv2("household_power_consumption.txt")
#Subsetting dataset
Household <- subset(data, Date== "1/2/2007" | Date =="2/2/2007")
#Creating Time series
plot.ts(Household$Sub_metering_1, xlab = "", 
           ylab = "Energy sub metering", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
lines(Household$Sub_metering_2,col="red")
lines(Household$Sub_metering_3,col="blue")
legend("topright", pch= "-", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#Generating PNG
dev.copy(png, file="plot3.png")
dev.off()