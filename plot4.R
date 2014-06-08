household<-read.table("household_power_consumption.txt", sep=";", header=T,
                      na.strings="?")
household1<-subset(household, Date=="1/2/2007"|Date=="2/2/2007")
x<-seq(as.POSIXct("2007-02-01 00:00:00"),by="min",length.out=2*24*60)
png(file="plot4.png",h=480, w=480)
par(mfrow=c(2,2))
y<-household1$Global_active_power
plot(x,y, type="l", xlab="", ylab="Global Active Power")
y1<-household1$Voltage
plot(x,y1, type="l", xlab="datetime", ylab="Voltage")
y2<-household1$Sub_metering_1
y3<-household1$Sub_metering_2
y4<-household1$Sub_metering_3
plot(x,y2,type="l",col="Black",ylab="Energy sub metering", xlab="")
lines(x,y3, type="l", col="Red")
lines(x,y4, type="l", col="Blue")
legend("topright",lty=c(1,1,1), lwd=1,fill=NULL, col=c("Black","Red", "Blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
y5<-household1$Global_reactive_power
plot(x,y5, type="l", xlab="datetime", ylab="Global_reactive_power")

