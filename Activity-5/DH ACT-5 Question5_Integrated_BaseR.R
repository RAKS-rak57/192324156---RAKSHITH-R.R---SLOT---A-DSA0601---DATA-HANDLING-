year <- c(2016,2017,2018,2019,2020,
          2021,2022,2023,2024,2025)

sales <- c(150,170,200,240,260,
           300,340,390,430,480)

profit <- c(20,25,32,40,42,
            55,65,72,82,95)

customers <- c(1200,1500,1800,2200,2400,
               2800,3300,3800,4200,4700)

branches <- c(5,6,7,8,8,
              10,11,12,13,15)
# ---------------- Q1 ----------------
plot(year,
     sales,
     type = "o",
     pch = 19,
     col = "blue",
     xlab = "Year",
     ylab = "Sales (Lakhs)",
     main = "Yearly Sales")
grid()
# ---------------- Q2 ----------------
dev.new()
symbols(sales,
        profit,
        circles = customers/max(customers),
        inches = 0.3,
        bg = "orange",
        fg = "red",
        xlab = "Sales (Lakhs)",
        ylab = "Profit (Lakhs)",
        main = "Bubble Plot")
text(sales,
     profit,
     labels = year,
     pos = 3,
     cex = 0.8)
# ---------------- Q4 ----------------
dev.new()
pairs(data.frame(Sales = sales,
                 Profit = profit,
                 Customers = customers,
                 Branches = branches),
      main = "Scatter Plot Matrix")
# ---------------- Q3 ----------------
corr <- cor(data.frame(Sales = sales,
                       Profit = profit,
                       Customers = customers,
                       Branches = branches))
# ---------------- Q5 ----------------
sales_branch <- cor(sales, branches)
profit_branch <- cor(profit, branches)
cat("\n")
cat("Q1. Temporal line chart showing yearly sales has been created.\n\n")
cat("Q2. Multivariate bubble plot created.\n")
cat("    X-axis      : Sales\n")
cat("    Y-axis      : Profit\n")
cat("    Bubble Size : Customers\n\n")
cat("Q3. Correlation Matrix:\n")
print(round(corr,3))
cat("\nQ4. Scatter Plot Matrix created using pairs() function.\n\n")
cat("Q5. Interpretation:\n")
cat("Correlation between Sales and Branches :", round(sales_branch,3), "\n")
cat("Correlation between Profit and Branches:", round(profit_branch,3), "\n\n")

if(sales_branch > 0 && profit_branch > 0)
{
    cat("Conclusion: Increase in branches is associated with higher sales and higher profits.\n")
}
else
{
    cat("Conclusion: No positive relationship found between branches, sales and profits.\n")
}