source("functions.R")

data <- readData("household_power_consumption.txt")

png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")
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
    lty = 1,
    lwd = 1
)
dev.off()