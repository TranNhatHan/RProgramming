ARK = read.table("../RBook/Amphibian_road_Kills.txt", header = TRUE)

plot(x=ARK$D.PARK, y=ARK$TOT.N, xlab = "Distance to park", ylab = "Number of dead animal")
M.Loess = loess(TOT.N ~ D.PARK, data = ARK)
Fit = fitted(M.Loess)
Ord1 = order(ARK$D.PARK)
lines(ARK$D.PARK[Ord1], Fit[Ord1], lwd = 3, lty = 2)

plot(x = ARK$D.PARK, y=ARK$TOT.N, cex = 0.5 +3*ARK$OLIVE/max(ARK$OLIVE), xlab = "Distance to park", ylab = "Number of dead animals")

plot(cars, main = "Stopping Distance versus Speed")
lines(stats::lowess(cars))
# loess(dist ~ speed, cars)
x = c(1,1,3:1,1:4,3)
y <- c(9,9:1)
y[order(x, y)]
# , y <- c(9,9:1), z <- c(2,1:9)
c(9,9:1)

cars.lo <- loess(dist ~ speed, cars)
predict(cars.lo, data.frame(speed = seq(5, 30, 1)), se = TRUE)

plot(cars$speed, cars$dist)
loess(speed ~ dist, cars)
lines(loess(speed ~ dist, cars))

# NOT RUN {
cars.lo <- loess(dist ~ speed, cars)
predict(cars.lo, data.frame(speed = seq(5, 30, 1)), se = TRUE)
# to allow extrapolation
cars.lo2 <- loess(dist ~ speed, cars,
  control = loess.control(surface = "direct"))
predict(cars.lo2, data.frame(speed = seq(5, 30, 1)), se = TRUE)
# }
cars.lo <- loess(dist ~ speed, cars)
predict(cars.lo, data.frame(speed = seq(5, 30, 1)), se = TRUE)