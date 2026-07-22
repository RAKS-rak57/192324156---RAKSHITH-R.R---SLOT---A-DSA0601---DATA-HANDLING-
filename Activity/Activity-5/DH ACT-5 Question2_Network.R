library(igraph)

from <- c("A","A","B","C","C","D","E","F","G","H")
to   <- c("B","C","D","D","E","E","F","G","H","A")

g <- graph_from_data_frame(data.frame(from,to), directed = FALSE)

plot(g,
     vertex.color = "skyblue",
     vertex.size = 30,
     vertex.label.cex = 1,
     main = "Network Graph")

deg <- degree(g)

highest <- V(g)[which.max(deg)]

plot(g,
     layout = layout_in_circle(g),
     vertex.color = "lightgreen",
     vertex.size = 30,
     vertex.label.cex = 1,
     main = "Circular Network Graph")

cat("\n")
cat("Q1. Network graph created using the igraph package.\n")
cat("Q2. Node labels are displayed and node colours are customized.\n")

cat("\nQ3. Degree of each node:\n")
print(deg)

cat("\nQ4. Node with the highest number of connections:\n")
print(highest)

cat("\nQ5. Circular layout of the network graph has been displayed.\n")