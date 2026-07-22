marks <- c(45,52,58,60,65,68,72,75,80,90)

ecdf_marks <- ecdf(marks)

plot(ecdf_marks,
     main="ECDF of Student Marks",
     xlab="Marks",
     ylab="Cumulative Probability",
     verticals=TRUE,
     do.points=TRUE,
     col="blue")

grid()

data.frame(
  Marks=sort(marks),
  Cumulative_Probability=seq(0.1,1,0.1)
)