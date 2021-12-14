setwd("/home/matheus/Code/fac/prob/trab")
source('scripts/lib/aoe4_lib.R')
source('scripts/lib/moda.R')

aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)
aoe4_africa <- subset(aoe4, region=="Africa")
aoe4_asia <- subset(aoe4, region=="Asia")
aoe4_europe <- subset(aoe4, region=="Europe")
aoe4_middleeast <- subset(aoe4, region=="Middle East")
aoe4_northamerica <- subset(aoe4, region=="North America")
aoe4_southamerica <- subset(aoe4, region=="South America")
aoe4_oceania <- subset(aoe4, region=="Oceania")


print("Medidas gerais")
working_with <- aoe4_oceania$winStreak

headers <- c("media", "mediana", "moda", "desvio padrao", "coeficiente de variabilidade")
summary_values <- c(mean(working_with), median(working_with), 0, sd(working_with), sd(working_with)/mean(working_with))
moda(working_with)
                    
customSummary <- data.frame(headers, summary_values)
head(customSummary)

