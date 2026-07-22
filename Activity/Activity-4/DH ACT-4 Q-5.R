income <- c(18000,22000,24000,26000,28000,
            30000,34000,42000,85000,200000)

par(mfrow = c(1,2))

hist(income,
     probability = TRUE,
     col = "lightgreen",
     main = "Histogram of Monthly Income",
     xlab = "Monthly Income")

lines(density(income),
      col = "blue",
      lwd = 2)

qqnorm(income,
       main = "Normal Q-Q Plot")

qqline(income,
       col = "red",
       lwd = 2)

par(mfrow = c(1,1))

cat("Income data is highly positively skewed.\n")
cat("The Q-Q plot deviates from the straight line, indicating the data is not normally distributed.\n")