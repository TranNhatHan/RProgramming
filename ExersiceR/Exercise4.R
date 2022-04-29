#Exercise 1
temp = read.table(file = "RBook/Temperature.txt", header = TRUE)
result = matrix(nrow = 16, ncol = 12)
result
allyear = unique(temp$Year)
for (i in 1:16) {
	year = allyear[i]
	val = temp[temp$Year == year,]
	result[i,] = tapply(val$Temperature, val$Month, mean, na.rm = TRUE)
}
result

#Exercise 2
table(temp$Station)
table(temp$Year)
table(temp$Year, temp$Station)

