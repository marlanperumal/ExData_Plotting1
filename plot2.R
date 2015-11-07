dat <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
dat$DateTime <- strptime(paste(dat$Date,dat$Time),"%d/%m/%Y %H:%M:%S")
dat$Date <- as.Date(dat$Date,"%d/%m/%Y")
dat2 <- dat[dat[,"Date"] >= "2007-02-01" & dat[,"Date"] <= "2007-02-02",]
par(mfrow=c(1,1))
png(filename="plot2.png",width=480,height=480)
with(dat2, plot(DateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()