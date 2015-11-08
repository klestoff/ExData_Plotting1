source("functions.R")

data <- readData("household_power_consumption.txt")

png(filename = "plot4.png", width = 480, height = 480, bg = "transparent")
par(mfrow = c(2, 2))

#plot 1
plot(data$DT, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#plot 2
plot(data$DT, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# plot 3
plot(
    data$DT,
    data$Sub_metering_1,
    type = "n",
    xlab = "",
    ylab = "Energy sub mettering"
)
lines(data$DT, data$Sub_metering_1, type = "l", col = "black")
lines(data$DT, data$Sub_metering_2, type = "l", col = "red")
lines(data$DT, data$Sub_metering_3, type = "l", col = "blue")
legend(
    "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    bty = "n",
    lty = 1,
    lwd = 1
)

#plot 4
plot(data$DT, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()