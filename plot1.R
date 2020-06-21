#Setting Workind Directory
setwd("C:/Users/ACER/Desktop/Internado/Coursera/Exploratory Data Analysis")
#Reading dataset
data<- read.csv2("household_power_consumption.txt")
#Subsetting dataset
Household <- subset(data, Date== "1/2/2007" | Date =="2/2/2007")
#Creating histogram
hist(as.numeric(Household$Global_active_power), col="red", main= "Global Active Power", xlab = "Global Active Power (kilowatts)")
#Creating PNG file
dev.copy(png, file="plot1.png")
dev.off()