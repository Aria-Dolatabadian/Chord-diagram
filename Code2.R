library(circlize)

my_data <- matrix(c(10, 20, 30, 14, 25, 26, 47, 58, 49, 10, 11, 12, 13, 54, 15), 5, 3)

rownames(my_data) <- paste0("Row", 1:5)
colnames(my_data) <- paste0("Col", 1:3)


df <- data.frame(from = rep(rownames(my_data), ncol(my_data)),
                 to = rep(colnames(my_data), each = nrow(my_data)),
                 value = as.vector(my_data))


print(df)



colors <- c(Col1 = "lightgrey", Col2 = "yellow",
            Col3 = "darkgrey", Row1 = "#FF410D",
            Row2 = "#6EE2FF", Row3 = "#F7C530",
            Row4 = "#95CC5E", Row5 = "#D0DFE6")

chordDiagram(my_data, grid.col = colors, transparency = 0.2, col = hcl.colors(15))
circos.clear()









