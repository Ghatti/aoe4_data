setwd("/home/matheus/Code/fac/prob/trab")
library(ggplot2)
aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4_edited <- data.frame(aoe4_data)

d9elo = quantile(aoe4_edited$elo, .9)

aoe4_edited <- cbind(aoe4_edited, elo_group = ifelse(aoe4_edited$elo > d9elo,"high", "common"))

summary(aoe4_edited$elo_group)

print(ggplot(data=aoe4_edited, 
             aes(x=elo_group, # construir vários gráficos de caixa baseado na variável tamanho
                 y=winPercent, # variável para a construção do gráfico de caixa
                 fill=elo_group)) + # colorir o gráfico de acordo com a variável tamanho
        geom_boxplot(show.legend = F) + # show.legend = F: não imprimir a legenda
        labs(x=NULL, y="ELO") + # nomeação dos eixos
        theme_minimal())

