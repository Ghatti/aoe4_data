setwd("/home/matheus/Code/fac/prob/trab")
source('scripts/lib/aoe4_lib.R')

library(ggplot2)

aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)

ggplot(data=aoe4, 
       aes(x=elo, # construir vários gráficos de caixa baseado na variável tamanho
           y=winPercent, # variável para a construção do gráfico de caixa
           fill=elo,
           group=elo)) + # colorir o gráfico de acordo com a variável tamanho
  geom_boxplot(show.legend = F) + # show.legend = F: não imprimir a legenda
  labs(x=NULL, y="Total Games") + # nomeação dos eixos
  theme_minimal()