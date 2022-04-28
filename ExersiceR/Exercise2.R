#Exercise 1
LengthCT = c(75, 85, 91.6, 95, NA, 105.5, 106)
Tb = c(0, 0, 1, NA, 0, 0, 0)
LengthCT_Average = mean(LengthCT, na.rm = TRUE)
#Exercise 2
Farm = c("MO", "MO", "MO", "MO", "LN", "SE", "QM")
Month = c(11, 7, 7, NA, 9, 9, 11)
Boar = cbind(Month, LengthCT, Tb)
dim(Boar)
nrow(Boar)
ncol(Boar)
#Exercise 3
Tb2 = as.vector(Tb)
Tb2
#Exercise 4
D = as.matrix(cbind(c(1, 2, 3), c(4, 2, 1), c(2, 3, 0)))
D
t(D)
solve(D)
D%*%solve(D)
#Exercise 5
DF = data.frame(Farm,
Month,
Year = c(00, 00, 01, NA, 03, 03, 02),
Sex = c(1, 2, 2, 2, 1, 2, 2),
LengthClass = c(1, 1, 1, 1, 1, 1, 1),
LengthCT,
Ecervi = c(0, 0, 0, NA, 0, 0, 0),
Tb,
LengthCT_Square = LengthCT*LengthCT)
Dfrm
L = list(Farm,
Month,
Year = c(00, 00, 01, NA, 03, 03, 02),
Sex = c(1, 2, 2, 2, 1, 2, 2),
LengthClass = c(1, 1, 1, 1, 1, 1, 1),
LengthCT,
Ecervi = c(0, 0, 0, NA, 0, 0, 0),
Tb,
LengthCT_Square = LengthCT*LengthCT)
L
#Exercise 6
RT = read.table(file = "../RBook/ISIT.xls")
SC = scan(file = "../RBook/ISIT.xls", what = "numeric")
is.matrix(RT)
is.matrix(SC)
is.data.frame(RT)
is.data.frame(SC)
#Exercise 7
DT = read.table(file = "../RBook/Deer.txt")
DT
