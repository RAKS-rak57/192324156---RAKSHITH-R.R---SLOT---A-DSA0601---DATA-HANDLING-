city <- c("Chennai","Bangalore","Hyderabad","Mumbai","Delhi",
          "Pune","Kolkata","Ahmedabad","Jaipur","Kochi")

lat <- c(13.08,12.97,17.38,19.07,28.61,
         18.52,22.57,23.02,26.91,9.93)

lon <- c(80.27,77.59,78.48,72.87,77.21,
         73.85,88.36,72.57,75.79,76.26)

pop <- c(11,13,10,20,32,7,15,8,4,2)

plot(lon, lat,
     pch = 19,
     cex = pop/5,
     col = heat.colors(10)[rank(pop)],
     xlab = "Longitude",
     ylab = "Latitude",
     main = "Geospatial Data Visualization")

text(lon, lat,
     labels = city,
     pos = 3,
     cex = 0.8)

highest <- data.frame(city, lat, lon, pop)[which.max(pop), ]

cat("\n")
cat("Q1. Scatter map created using Longitude and Latitude.\n")
cat("Q2. Bubble map created where bubble size represents Population.\n")
cat("Q3. All cities are labelled using the geom_text() function.\n")
cat("Q4. Different colours are used to represent different population sizes.\n")
cat("Q5. City with the highest population:\n")
print(highest)