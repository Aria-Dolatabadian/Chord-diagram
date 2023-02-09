#install circlize
#load circlize

#generates randome data and export
#set.seed(500)  #repeat the randome table

data = matrix(sample(24, 24), 4, 6) 
rownames(data) = paste0("S", 1:4)
colnames(data) = paste0("E", 1:6)
data

write.table(data, file = "Aria.csv",sep=",")

#read csv
# copy/paste your working directory
mydata <- read.csv("C:/Users/00090473/RWD/aria.csv", header=TRUE)

#chord diagram
chordDiagram(mydata)
