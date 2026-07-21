purchase <- c(250,300,320,350,380,
              450,520,650,1800,5200)

hist(purchase,
     probability=TRUE,
     col="lightblue",
     main="Histogram of Purchase Amount",
     xlab="Purchase Amount (Rs)")

lines(density(purchase),
      col="red",
      lwd=2)

grid()

cat("Distribution is Positively Skewed\n")