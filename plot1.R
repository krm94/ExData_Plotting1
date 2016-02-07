dt = read.csv("household_power_consumption.txt", sep = ";")
dt$Date <- as.character(dt$Date)
dt$Date <- as.Date(dt$Date, "%d/%m/%Y")
dt$Global_active_power <- as.character(dt$Global_active_power)
dt$Global_active_power <- as.numeric(dt$Global_active_power)
sdt <- dt[dt$Date >= as.Date("2007-02-01") & dt$Date  <= as.Date("2007-02-02"),]
png("plot1.png")
hist(sdt$Global_active_power , col = "red" , main = "Glabal Active power", xlab = "Global Active Power(kilowatts)")
dev.off()
