setwd("/home/matheus/Code/fac/prob/trab")
source('scripts/lib/tab_freq.R')
source('scripts/lib/tab_intv.R')

aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)

#Tabelas de frequência por intervalo
tab_intv(aoe4$elo, max=2000, regra = 'sturges') #rating
tab_intv(aoe4$winPercent, max=101, regra = 'sturges') #winPercent
tab_intv(aoe4$totalGames, max=960, regra = 'sturges') #totalGames
tab_intv(aoe4$winStreak, max=80, regra = 'sturges') #winStreak

#tabela de frequencias regiao

tab_freq(aoe4$region)