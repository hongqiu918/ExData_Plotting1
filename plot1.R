household<-read.table("household_power_consumption.txt", sep=";", header=T,
                      na.strings="?")
household1<-subset(household, Date=="1/2/2007"|Date=="2/2/2007")
png(file="plot1.png",w=480, h=480)
hist(household1$Global_active_power,col="Red",xlab="Global Active Power 
     (kilowatts)", main="Global Active Power", ylim=c(0,1200), xaxt="n")
axis(side=1, at=c(0,2,4,6))