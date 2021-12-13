setwd("/home/matheus/Code/fac/prob/trab")
source('scripts/lib/aoe4_lib.R')


aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)
