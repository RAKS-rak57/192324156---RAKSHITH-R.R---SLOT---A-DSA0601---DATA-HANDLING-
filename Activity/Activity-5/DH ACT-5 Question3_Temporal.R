month <- c("Jan","Feb","Mar","Apr","May","Jun",
           "Jul","Aug","Sep","Oct","Nov","Dec")

sales <- c(120,135,150,170,190,220,
           210,230,250,270,290,320)

plot(sales,
     type = "o",
     pch = 19,
     xaxt = "n",
     col = "blue",
     xlab = "Month",
     ylab = "Sales (Lakhs)",
     main = "Monthly Sales")

axis(1,
     at = 1:12,
     labels = month)

grid()

highest_month <- month[which.max(sales)]
highest_sales <- max(sales)

cat("\n")
cat("Q1. Line chart created to show monthly sales.\n")
cat("Q2. Custom month names have been added using the axis() function.\n")
cat("Q3. Data points have been highlighted using pch = 19.\n")
cat("Q4. Grid lines and proper axis labels have been displayed.\n")
cat("Q5. Month with the highest sales:\n")
cat("   Month :", highest_month, "\n")
cat("   Sales :", highest_sales, "Lakhs\n")