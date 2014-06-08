household<-read.table("household_power_consumption.txt", sep=";", header=T,
                      na.strings="?")
household1<-subset(household, Date=="1/2/2007"|Date=="2/2/2007")
y<-household1$Global_active_power
x<-seq(as.POSIXct("2007-02-01 00:00:00"),by="min",length.out=2*24*60)
png(file="plot2.png",h=480, w=480)
plot(x,y,type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.off()