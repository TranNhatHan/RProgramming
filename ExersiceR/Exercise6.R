#Exercise 6.1
TP = read.table(file = "Data/Temperature.txt", header = TRUE)
names(TP)
str(TP)
AllStations <- unique(TP$Station)
for (i in 1:30) {
  Station.i = AllStations[i]
  filename = paste(Station.i, ".jpg", sep = "")
  jpeg(file = filename)
  TP.i = TP[TP$Station == Station.i, ]
  temp = tapply(X = TP.i$Temperature, INDEX = TP.i$Month, FUN = mean, na.rm = T)
  plot(temp)
  dev.off()
}
#Exercise 6.2
O = read.table(file = "Data/Owls.txt", header = TRUE)
names(O)
str(O)
AllNest <- unique(O$Nest)
for (i in 1:27) {
  O.i = O[O$Nest == AllNest[i], ]
  filename = paste(AllNest[i], ".jpg", sep = "")
  jpeg(file = filename)
  plot(x = O1$ArrivalTime, y = O1$SiblingNegotiation, col = c("blue", "red")[ifelse(O1$FoodTreatment == "Deprived", 1, 2)])
  legend(x= "right", c("Deprived", "Satiated"), col = c("blue", "red"), pch = 1)
  dev.off()
}
#Exercise 6.3
V = read.table(file = "Data/Owls.txt", header = TRUE)
names(V)
str(V)
veggies = function(xv, Choicev = "Richness") {
  if (Choice1 == "Richness") {
    Index <- rowSums(xv > 0, na.rm = TRUE) 
  } else if (Choicev == "Total Abundance") {
    Index <- rowSums(xv, na.rm = TRUE) 
  } else if (Choice1 == "Shannon") {
    RS <- rowSums(xv, na.rm = TRUE)
    prop <- Spec / RS
    Index <- -rowSums(prop*log(prop),na.rm=TRUE)
  } else {
    print("Check your choice")
    Index <- NA 
  }
list(Index = Index, MyChoice = Choice1)
}