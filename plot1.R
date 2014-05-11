
##First, download the file from the data repository and unzip it into your working directory.
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
filename = "./household_power_consumption.txt"
dt1 <- read.csv2.sql(filename,mySql)
with(dt1,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)"))
