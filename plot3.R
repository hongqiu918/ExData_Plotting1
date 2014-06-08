household<-read.table("household_power_consumption.txt", sep=";", header=T,
                      na.strings="?")
household1<-subset(household, Date=="1/2/2007"|Date=="2/2/2007")
x<-seq(as.POSIXct("2007-02-01 00:00:00"),by="min",length.out=2*24*60)
y1<-household1$Sub_metering_1
y2<-household1$Sub_metering_2
y3<-household1$Sub_metering_3
png(file="plot3.png", h=480, w=480)
plot(x,y1,type="l",col="Black",ylab="Energy sub metering", xlab="")
lines(x,y2, type="l", col="Red")
lines(x,y3, type="l", col="Blue")
legend("topright",lty=c(1,1,1), lwd=1, col=c("Black","Red", "Blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
