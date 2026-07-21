steps <- c(4200,5000,5600,6100,6800,
           7200,8100,9200,10400,12000)

ecdf_steps <- ecdf(steps)

plot(ecdf_steps,
     main="ECDF of Daily Steps",
     xlab="Daily Steps",
     ylab="Cumulative Probability",
     verticals=TRUE,
     do.points=TRUE,
     col="darkgreen")

grid()

prop <- ecdf_steps(8000)

cat("Proportion walking 8000 steps or fewer =", prop,"\n")