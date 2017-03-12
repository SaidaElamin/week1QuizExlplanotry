

# Plot4

getwd()

kk = setwd('C:/Users/ZCS/Desktop/exdata')

unzip("exdata_data_household_power_consumption.zip", exdir = "exdata")

list.files("exdata")

mydata = read.table(file="household_power_consumption.txt", sep =";", header = TRUE, na.strings = "?")


mydata

mydata$Date = as.Date(mydata$Date, "%d/%m/%Y")

data$Time = strptime(paste(data$Time), "%H:%M:%S") 


data = subset(mydata, mydata$Date >= as.Date("2007-02-01") & mydata$Date <= as.Date("2007-02-02"))

par(mfrow=c(2,2))

par(mar=c(4,4,4,4))

plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

plot(data$Time, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(data$Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

points(data$Time, data$Sub_metering_2, type = "l", col = "red")

points(data$Time, data$Sub_metering_3, type = "l", col = "blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = 0.8)

plot(data$Time, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
