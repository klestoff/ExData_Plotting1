source("functions.R")

data <- readData("household_power_consumption.txt")

png(filename = "plot1.png", width = 400, height = 400, bg = "transparent")
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()