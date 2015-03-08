setwd("C:/EDA/proj1")
getwd()
## Getting full dataset
alldata <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?") 
alldata$Date <- as.Date(alldata$Date, format="%d/%m/%Y")
## Subsetting the data
subsetdata <- subset(alldata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(alldata)
## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)
## Plot 2
plot(subsetdata$Global_active_power~data$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
