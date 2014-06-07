## Change Directory of R to where the file is located
## Loading the Data set
HHPC <- read.csv ("./household_power_consumption.txt",  sep=";", na.strings='?', header = TRUE, colClasses = c("character", rep("factor",1), rep("numeric",7)))

## Selecting the Data set based on the Dates between 1/2/2007 and 2/2/2007 
Sel_HHPC <- HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"), ]   

### Invoking the Histogram
hist(Sel_HHPC$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")

## Createting Plot png to local directory
dev.copy(png, file = "plot1.png") 

## Closing png
dev.off() 
