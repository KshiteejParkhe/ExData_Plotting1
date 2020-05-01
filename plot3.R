setwd(dir = "D:/Coursera/Exploratory data analysis/Project 1")
data<- read.table("D:/Coursera/R programming/exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

#selecting the required subset
sub_data <- subset(x = data, subset = data$Date=="1/2/2007" | data$Date== "2/2/2007")

#combining Date and Time into a new column and assigning POSIXct class
sub_data$combined <- as.POSIXct(paste(sub_data$Date, sub_data$Time), format = "%d/%m/%Y %H:%M:%S")

#Creating PNG file and writing the plot to it
png("plot3.png")
plot(x = sub_data$combined, y = sub_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
with(data = sub_data, lines(combined, Sub_metering_2, col = "red"))
with(data = sub_data, lines(sub_data$combined, sub_data$Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off()
