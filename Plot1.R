# week1QuizExlplanotry
#Plot1.R

getwd()

kk = setwd('C:/Users/ZCS/Desktop/exdata')

unzip("exdata_data_household_power_consumption.zip", exdir = "exdata")

list.files("exdata")

mydata = read.table(file="household_power_consumption.txt", sep =";", header = TRUE, na.strings = "?")

mydata

mydata$Date = as.Date(mydata$Date, "%d/%m/%Y")

data = subset(mydata, mydata$Date>= as.Date("2007-02-01")&mydata$Date<=as.Date("2007-02-02"))

data

hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", breaks = 13, ylim = c(0,1200), xlim = c(0, 6))
