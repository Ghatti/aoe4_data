source('/home/matheus/Code/fac/prob/trab/scripts/aoe4_lib.R')

setwd("/home/matheus/Code/fac/prob/trab")

aoe4_data <- read.table(file="aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)

print("Medidas gerais")
aoe4_medidas(aoe4)


print("q3 ELO")

aoe4_top25 <- subset(aoe4, elo >= 1119)
aoe4_medidas(aoe4_top25)