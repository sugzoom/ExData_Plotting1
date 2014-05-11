##First, download the file from the data repository and unzip it into your working directory.
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
filename = "./household_power_consumption.txt"
dt1 <- read.csv.sql(filename,mySql,header=TRUE,sep=";")
dt1$DateTime <- strptime(paste(dt1$Date, dt1$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")


png(filename="plot3.png",width=480,height=480)
with(dt1,plot(x=DateTime,y=Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",col="black"))
with(dt1, lines(x=DateTime,y=Sub_metering_2,col = "red"))
with(dt1, lines(x=DateTime,y=Sub_metering_3,col = "blue"))
legend("topright", pch = "_", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()