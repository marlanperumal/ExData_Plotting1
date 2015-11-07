dat <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
dat$DateTime <- strptime(paste(dat$Date,dat$Time),"%d/%m/%Y %H:%M:%S")
dat$Date <- as.Date(dat$Date,"%d/%m/%Y")
dat2 <- dat[dat[,"Date"] >= "2007-02-01" & dat[,"Date"] <= "2007-02-02",]
par(mfrow = c(1,1))
png(filename="plot3.png",width=480,height=480)
with(dat2, {plot(DateTime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering",col="black");
    lines(DateTime,Sub_metering_2,col="red");
    lines(DateTime,Sub_metering_3,col="blue");
    legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
})
dev.off()