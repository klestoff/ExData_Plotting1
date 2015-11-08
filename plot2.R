source("functions.R")

data <- readData("household_power_consumption.txt")

png(filename = "plot2.png", width = 400, height = 400, bg = "transparent")
plot(
    data$DT,
    data$Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
)
dev.off()