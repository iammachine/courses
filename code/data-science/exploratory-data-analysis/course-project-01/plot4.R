# Exploratory Data Analysis
# Johns Hopkins University - Data Science Specialization.
# Course-Project: 01 (25% of final grade)
# =======================================================
# @author		: Prabhat Kumar
# @date 		: 09-July-2015
# =======================================================

## Making Plots:
## [4]. Consolidated:
##      1. Global Active Power: household global minute-averaged active power (in kilowatt).
##      2. Voltage: minute-averaged voltage (in volt).
##      3. Energy Sub-Metering: All
##      4. Global Reactive Power: household global minute-averaged reactive power (in kilowatt).

## First check whether it has the file in the current dir or not.
if (!"load_data.R" %in% list.files()) {
  # Set the Working Directory.
  setwd("~/Desktop/Exploratory-Data-Analysis/Course-Project-01")
}

source("load_data.R")
# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))
## Top-left
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
## Top-right
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
## Bottom-left
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
## Bottom-right
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
# shuts down the specified (by default the current) device.
dev.off()
