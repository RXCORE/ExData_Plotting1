## Change Directory of R to where the file is located
## Loading the Data set
HHPC <- read.csv ("./household_power_consumption.txt",  sep=";", na.strings='?', header = TRUE, colClasses = c("character", rep("factor",1), rep("numeric",7)))

## Selecting the Data set based on the Dates between 1/2/2007 and 2/2/2007 
Sel_HHPC <- HHPC[HHPC$Date %in% c("1/2/2007","2/2/2007"), ]   



## For the combination of the graphs
par(mfrow = c(2, 2))

## Graph 1
plot(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time), "%d/%m/%Y %H:%M:%S"), Sel_HHPC$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="",type="l")

## Graph 2
plot(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time), "%d/%m/%Y %H:%M:%S"), Sel_HHPC$Voltage, ylab="Voltage", xlab="datetime", type="l")

## Graph 3
plot(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time), "%d/%m/%Y %H:%M:%S"),
     Sel_HHPC$Sub_metering_1, ylab="Energy sub metering", xlab="", type="l")
lines(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time),"%d/%m/%Y %H:%M:%S"), Sel_HHPC$Sub_metering_2, col="red")
lines(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time),"%d/%m/%Y %H:%M:%S"), Sel_HHPC$Sub_metering_3, col="blue")
legend(cex=0.7,"topright", lty=c(rep(1,3)), col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2",  "Sub_metering_3"))

## Graph 4
plot(strptime(paste(Sel_HHPC$Date, Sel_HHPC$Time), "%d/%m/%Y %H:%M:%S"), Sel_HHPC$Global_reactive_power, ylab="Global_reactive_power",xlab="datetime", type="l")


## Createting Plot png to local directory
dev.copy(png, file = "plot4.png") 

## Closing png
dev.off() 
