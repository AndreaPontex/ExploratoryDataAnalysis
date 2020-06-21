#Setting Working Directory
setwd("C:/Users/ACER/Desktop/Internado/Coursera/Exploratory Data Analysis")

#Reading dataset
data<- read.csv2("household_power_consumption.txt")

#Subsetting dataset
Household <- subset(data, Date== "1/2/2007" | Date =="2/2/2007")

#Setting Graphic Device PNG
png("C:/Users/ACER/Desktop/Internado/Coursera/Exploratory Data Analysis/plot4.png")

#Creating matrix
matrix (c(1:4),nrow = 2,byrow = FALSE)
layout(matrix(c(1:4),nrow = 2, byrow = FALSE))

#Creating plots
with(Household, {
  
  #Plot1 
  plot.ts(Global_active_power, xlab=" ",ylab="Global Active Power", xaxt="n")
    #Personalize
    axis(1, at= c(0,1440,2880), lab=c("Thu","Fri","Sat"))
  
  #Plot2
   plot.ts(Household$Sub_metering_1, xlab = "",  ylab = "Energy sub metering"
           , xaxt = "n")
       lines(Household$Sub_metering_2,col="red")
       lines(Household$Sub_metering_3,col="blue")
    #Personalize   
       axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
       legend("topright", pch= "-", col = c("black", "red", "blue"), 
              legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
              , bty="n")
  #Plot3
   plot.ts(Voltage, xlab = "datetime",
             ylab = "Voltage", xaxt = "n")
    #Personalize
       axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
  
       
  #Plot4 
  plot.ts(Global_reactive_power, xlab = "", ylab = "Global_reactive_power",
          xaxt = "n")
    #Personalize
      axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
         
      })
#Saving plots
dev.off()
