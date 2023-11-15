library(circlize)


# Read data from CSV
Circ <- read.csv("data.csv", header = TRUE, row.names = 1)
print(Circ)
str(Circ)

# Convert data to matrix
Circ <- as.matrix(Circ)

# Set the resolution of the output plot
png("output_plot.png", width = 5000, height = 5000)  # Adjust width and height as needed

# Plot the chord diagram
chordDiagram(Circ)

# Clear the data label of the Outer circos diagram
chordDiagram(Circ, annotationTrack = "grid", preAllocateTracks = 1)

# Add labels and axis
circos.trackPlotRegion(track.index = 2, panel.fun = function(x, y) {
  xlim = get.cell.meta.data("xlim")
  ylim = get.cell.meta.data("ylim")
  sector.name = get.cell.meta.data("sector.index")
  
  # Print labels 
  circos.text(mean(xlim), ylim[1] + 2.5, sector.name, 
              facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5),
              cex = 5) #labels font size
  circos.axis(h = "top", labels.cex = 0.5, major.tick.percentage = 0.2, 
              sector.index = sector.name, track.index = 2)
}, bg.border = NA)

# Save the plot
dev.off()
