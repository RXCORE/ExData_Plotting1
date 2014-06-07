## Change Directory of R to where the file is located
## Loading the Data set
HHPC <- read.csv ("./household_power_consumption.txt",  sep=";", na.strings='?', header = TRUE, colClasses = c("character", rep("factor",1), rep("numeric",7)))

## Selecting the Data set based on the Dates between 1/2/2007 and 2/2/2007 
Sel_HHPC <- HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"), ]   

### Plotting Line 
plot(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time), "%d/%m/%Y %H:%M:%S"), Sel_HHPC$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")

## Createting Plot png to local directory
dev.copy(png, file = "plot2.png") 

## Closing png
dev.off() 
