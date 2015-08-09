## Module 4 Project 1: plot1.R
##
## This assignment uses data from the UC Irvine Machine Learning Repository, 
## a popular repository for machine learning datasets. In particular, we will 
## be using the "Individual household electric power consumption Data Set".
##
## Our overall goal here is simply to examine how household energy usage varies 
## over a 2-day period in February, 2007. Your task is to reconstruct the 
## following plots below, all of which were constructed using the base plotting 
## system.
##
## First you will need to fork and clone the following GitHub repository: 
## https://github.com/rdpeng/ExData_Plotting1
##
## For each plot you should
## 1. Construct the plot and save it to a PNG file with a 
##      width of 480 pixels and a height of 480 pixels.
## 2. Name each of the plot files as plot1.png, plot2.png, etc.
## 3. Create a separate R code file (plot1.R, plot2.R, etc.) that constructs 
##      the corresponding plot, 
##      i.e. code in plot1.R constructs the plot1.png plot. 
##      Your code file should include code for reading the data so that the plot 
##      can be fully reproduced. You must also include the code that creates 
##      the PNG file.
## 4. Add the PNG file and R code file to the top-level folder of your git 
##      repository (no need for separate sub-folders)
##
## When you are finished with the assignment, push your git repository to GitHub 
## so that the GitHub version of your repository is up to date. There should be 
## four PNG files and four R code files, a total of eight files in the top-level 
## folder of the repo.

## Read the Data Set. This will take some time.
df <- read.csv("household_power_consumption.txt",header = TRUE, sep = ";",
               na.strings = "?",stringsAsFactors = FALSE)

## Coerce the date column into date using as.date
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")

## assign df_needed to the data we're interested in.
df_needed <- df[df$Date=="2007-02-01"|df$Date=="2007-02-02",]

## remove df to clear memory
rm(df)

## use basic hitogram to create the plot 
hist(df_needed$Global_active_power, 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency",
     cex.lab = 0.7,
     col = "Red")

## now let's try using ggplot
## install.packages("ggplot2")
## library(ggplot2)
## sorry error in excution, will try later.

## copy to a PNG file
dev.copy(png, file = "plot1.png", height=480, width=480)
dev.off() ## close the png devices
