# Exploratory Data Analysis
# Johns Hopkins University - Data Science Specialization.
# Course-Project: 01 (25% of final grade)
# =======================================================
# @author		: Prabhat Kumar
# @date 		: 09-July-2015
# =======================================================

## Making Plots:
## [3]. Sub Metering:
##      energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
##      energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
##      energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## First check whether it has the file in the current dir or not.
if (!"load_data.R" %in% list.files()) {
  # Set the Working Directory.
  setwd("~/Desktop/Exploratory-Data-Analysis/Course-Project-01")
}

source("load_data.R")
# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
# to plot.
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
# shuts down the specified (by default the current) device.
dev.off()
