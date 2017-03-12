# Plot1

getwd()

kk = setwd('C:/Users/ZCS/Desktop/exdata')

unzip("exdata_data_household_power_consumption.zip", exdir = "exdata")

list.files("exdata")

mydata = read.table(file="household_power_consumption.txt", sep =";", header = TRUE, na.strings = "?")


mydata

mydata$Date = as.Date(mydata$Date, "%d/%m/%Y")

data$Time = strptime(paste(data$Time), "%H:%M:%S") 


data = subset(mydata, mydata$Date >= as.Date("2007-02-01") & mydata$Date <= as.Date("2007-02-02"))

plot(data$Time, data$Global_active_power, type = "1", xlab = "", ylab = "Global Active Power (kilowatts)")
