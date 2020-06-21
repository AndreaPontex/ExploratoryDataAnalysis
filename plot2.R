#Setting Workind Directory
setwd("C:/Users/ACER/Desktop/Internado/Coursera/Exploratory Data Analysis")
#Reading dataset
data<- read.csv2("household_power_consumption.txt")
#Subsetting dataset
Household <- subset(data, Date== "1/2/2007" | Date =="2/2/2007")
#Global Active Power from character to numeric
Household[,"Global_active_power"]<- as.numeric(Household$Global_active_power)
plot.ts(Household$Global_active_power, xlab = "",
        ylab = "Global Active Power (kilowatts)", xaxt = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
#Creating PNG file
dev.copy(png, file="plot2.png")
dev.off()