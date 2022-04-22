a = read.csv("GDP_VN.csv")
a$Year
a$Total.GDP

plot(x = a$Year, y = a$Total.GDP,type = "o", col = a$Year)
