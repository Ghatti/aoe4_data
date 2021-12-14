library(ggplot2) # biblioteca para construção de gráficos

setwd("/home/matheus/Code/fac/prob/trab")
source('scripts/lib/aoe4_lib.R')
source('scripts/lib/moda.R')

aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)

d9_elo = quantile(aoe4$elo, .9)
aoe4_d9_elo <- subset(aoe4, elo >= d9_elo)

ggplot() + 
geom_point(data = aoe4_d9_elo, 
           aes(x = elo, 
               y = winPercent), # Cor dos pontos
           alpha = .5) + 
  scale_size(range = c(.1, 10),
             name = 'Teste')+ 
  scale_colour_brewer(palette = 'Set1') +  # Paleta de cores
  labs(x = 'Rating - Elo',
       y = '% de vitórias') + 
  theme_minimal()