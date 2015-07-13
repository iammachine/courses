# Exploratory Data Analysis
# Johns Hopkins University - Data Science Specialization.
# Course-Project: 01 (25% of final grade)
# =======================================================
# @author		: Prabhat Kumar
# @date 		: 09-July-2015
# @copyright: Prabhat Kumar
# =======================================================

## Set the Working Directory.
setwd("~/Desktop/Exploratory-Data-Analysis/Course-Project-01")

## Unzip the data.
unzip("./data/household_power_consumption.zip", exdir = "./data/")

## This file is for loading the large dataset of Household Power Consumption.
## data/household_power_consumption.txt = The dataset has 2,075,259 rows and 9 columns.
filename <- "./data/household_power_consumption.txt"
data <- read.table(filename, header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?")
dim(data)         # [1] 2075259   9
attach(data)

## Using data from the dates 2007-02-01 and 2007-02-02.
## We only need data of 2 days.
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)

x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData)      # [2] 2880      10
attach(newData)
