Degrees = read.table(file = "../RBook/Temperature.txt", header = TRUE)
names(Degrees)
str(Degrees)
unique(Degrees$Station)

splitted = t(sapply(Degrees$Date, function(x) substring(x, first=c(1,5,7), last=c(4,6,8))))
splitted
Degrees = data.frame(cbind(Degrees, splitted))

names(Degrees)[17] = "Year2"
names(Degrees)[18] = "Month2"
names(Degrees)[19] = "Day"

str(Degrees)
a = order(Degrees$Station, Degrees$Month2)
a
DutchStations = Degrees[a, ]
DutchStations
str(DutchStations)
unique(DutchStations$Station)

AllStations <- unique(DutchStations$Station) 
for (i in 1:30) {
  Station.i <- AllStations [i]
  DutchStations.i <-DutchStations[DutchStations$Station == Station.i, ]
  temp.i = tapply(X = DutchStations.i$Temperature, INDEX = DutchStations.i$Month2,
                  FUN = mean, na.rm = TRUE)
  yourfilename <- paste(Station.i, ".jpg", sep = "")
  jpeg(file = yourfilename)
  plot(y =temp.i,
       x = c(1:12),
       xlab = "Months",
       ylab = "Average monthly temp (C)",
       main = Station.i)
  dev.off()
}

result = matrix(nrow = 16, ncol = 12)
allyear = unique(temp$Year)
for (i in 1:16) {
  year = allyear[i]
  val = temp[temp$Year == year,]
  result[i,] = tapply(val$Temperature,val$Month,mean, na.rm = TRUE)
}
result

TP = read.table(file = "../RBook/Temperature.txt", header = TRUE)
names(TP)
str(TP)
unique(TP$Station)
TP.DANT <- TP[TP$Station=="DANT", ]
str(TP.DANT)
plot(x = TP.DANT$Temperature, y = TP.DANT$Salinity, xlab = "Average monthly temperature (C)", main = "DANT", ylab = "Months")