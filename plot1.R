
##First, download the file from the data repository and unzip it into your working directory.
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
filename = "./household_power_consumption.txt"
dt1 <- read.csv.sql(filename,mySql,header=TRUE,sep=";")
dt1$DateTime <- strptime(paste(dt1$Date, dt1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")

png(filename="plot1.png",width=480,height=480)
with(dt1,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)"))
dev.off()