setwd(dir = "D:/Coursera/Exploratory data analysis/Project 1")
data<- read.table("D:/Coursera/R programming/exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

#selecting the required subset
sub_data <- subset(x = data, subset = data$Date=="1/2/2007" | data$Date== "2/2/2007")

png(filename = "plot1.png") #creating a PNG file

par(mar = c(4,4,2,1)) #setting margins to prevent error of large margins 

#plotting the data as histogram with the required labels
hist(sub_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()
