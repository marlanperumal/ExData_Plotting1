dat <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
dat$Date <- as.Date(dat$Date,"%d/%m/%Y")
dat2 <- dat[dat[,"Date"] >= "2007-02-01" & dat[,"Date"] <= "2007-02-02",]
par(mfrow=c(1,1))
png(filename="plot1.png",width=480,height=480)
hist(dat2$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()