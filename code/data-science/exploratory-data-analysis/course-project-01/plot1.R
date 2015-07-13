# Exploratory Data Analysis
# Johns Hopkins University - Data Science Specialization.
# Course-Project: 01 (25% of final grade)
# =======================================================
# @author		: Prabhat Kumar
# @date 		: 09-July-2015
# =======================================================

## Making Plots:
## [1]. Global Active Power: household global minute-averaged active power (in kilowatt).

## First check whether it has the file in the current dir or not.
if (!"load_data.R" %in% list.files()) {
  # Set the Working Directory.
  setwd("~/Desktop/Exploratory-Data-Analysis/Course-Project-01")
}

source("load_data.R")
# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
# to histogram plot.
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
# shuts down the specified (by default the current) device.
dev.off()
