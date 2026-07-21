waiting <- c(12,15,18,20,22,
             24,25,28,30,32)

qqnorm(waiting,
       main="Normal Q-Q Plot of Waiting Time")

qqline(waiting,
       col="red",
       lwd=2)

grid()

cat("Waiting times approximately follow a normal distribution.\n")