marks <- c(60,68,74,79,82,85,88,91,94,97)
att <- c(75,80,84,88,90,92,94,95,97,99)
hrs <- c(2,3,4,5,5,6,6,7,8,9)
proj <- c(1,2,2,3,3,4,4,5,5,6)
stu <- c("A","B","C","D","E","F","G","H","I","J")

# ---------------- Q1 Bubble Plot ----------------

symbols(marks,
        att,
        circles = hrs,
        inches = 0.3,
        bg = "lightblue",
        fg = "blue",
        xlab = "Marks",
        ylab = "Attendance (%)",
        main = "Bubble Plot")

text(marks,
     att,
     labels = stu,
     pos = 3,
     cex = 0.8)

# ---------------- Q2 Scatter Plot Matrix ----------------

dev.new()

pairs(data.frame(Marks = marks,
                 Attendance = att,
                 Study_Hours = hrs,
                 Projects = proj),
      main = "Scatter Plot Matrix")

# ---------------- Q5 Heatmap ----------------

dev.new()

heatmap(cor(data.frame(Marks = marks,
                       Attendance = att,
                       Study_Hours = hrs,
                       Projects = proj)),
        Rowv = NA,
        Colv = NA,
        scale = "none",
        main = "Correlation Heatmap")

# ---------------- Q3 Correlation ----------------

corr <- cor(data.frame(Marks = marks,
                       Attendance = att,
                       Study_Hours = hrs))

# ---------------- Q4 Highest Marks ----------------

top_student <- data.frame(Student = stu,
                          Marks = marks,
                          Attendance = att,
                          Study_Hours = hrs,
                          Projects = proj)[which.max(marks), ]

cat("\n")
cat("Q1. Bubble plot created.\n")
cat("    X-axis : Marks\n")
cat("    Y-axis : Attendance (%)\n")
cat("    Bubble Size : Study Hours\n\n")

cat("Q2. Scatter Plot Matrix created using pairs() function.\n\n")

cat("Q3. Correlation among Marks, Attendance and Study Hours:\n")
print(round(corr, 3))

cat("\nQ4. Student with the highest marks and largest bubble:\n")
print(top_student)

cat("\nQ5. Heatmap created showing relationships among all numerical variables.\n")