HPwr<-read.table("household_power_consumption.txt", header=T, sep=";", na.string="?")
HPwr$DateTime<-paste(HPwr$Date, HPwr$Time)
library(dplyr)
SubHPwr<-filter(NewHPwr, DateTime>=as.Date("2007-02-01 00:00:00"), Date.Time<"2007-02-02 00:00:00")

hist(as.numeric(SubHPwr$Global_active_power), col="red", xlab="Global Avtive Power (killowatts)", main="Global Avtive Power")
dev.copy(png, file="Plot1.png")
dev.off()