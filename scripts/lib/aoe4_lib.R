source('/home/matheus/Code/fac/prob/scripts/moda.R')

library(ggplot2)

aoe4_medidas = function(aoe4_subset){
  
  #Medidas Elo
  print("Medidas ELO")
  
  print(summary(aoe4_subset$elo))
  moda(aoe4_subset$elo)
  
  print("")
  print("Desvio Padrao:")
  print(sd(aoe4_subset$elo))
  
  print("Coeficiente de variação:")
  print(sd(aoe4_subset$elo)/mean(aoe4$elo))
  
  
  #Medidas winPercent
  print("Medidas % de vitórias")
  print(summary(aoe4_subset$winPercent))
  moda(aoe4_subset$winPercent)
  
  print("")
  print("Desvio Padrao:")
  print(sd(aoe4_subset$winPercent))
  
  print("Coeficiente de variação:")
  print(sd(aoe4_subset$winPercent)/mean(aoe4$winPercent))
  
  
  #Medidas totalGames
  print("Medidas Total de jogos:")
  print(summary(aoe4_subset$totalGames))
  moda(aoe4_subset$totalGames)
  
  print("")
  print("Desvio Padrao:")
  print(sd(aoe4_subset$totalGames))
  
  print("Coeficiente de variação:")
  print(sd(aoe4_subset$totalGames)/mean(aoe4$totalGames))
  
  
  #Medidas winStreak
  print("Medidas Sequência de vitórias:")
  print(summary(aoe4_subset$winStreak))
  moda(aoe4_subset$winStreak)
  
  print("")
  print("Desvio Padrao:")
  print(sd(aoe4_subset$winStreak))
  
  print("Coeficiente de variação:")
  print(sd(aoe4_subset$winStreak)/mean(aoe4$winStreak))
  
  
  #medidas region
  print("Medidas Região")
  print(summary(aoe4_subset$region))
  
}

aoe4_tabelas = function(aoe4_subset){
  
  #Tabelas de frequência por intervalo
  tab_intv(aoe4_subset$elo, max=2000, regra = 'sturges') #rating
  tab_intv(aoe4_subset$winPercent, max=101, regra = 'sturges') #winPercent
  tab_intv(aoe4_subset$totalGames, max=960, regra = 'sturges') #totalGames
  tab_intv(aoe4_subset$winStreak, max=80, regra = 'sturges') #winStreak
  
  #tabela de frequencias regiao
  
  tab_freq(aoe4_subset$region)
  
}

aoe4_graficos = function(aoe4_subset, prefix){
  
  #tabela aoe region
  
  png(paste(prefix,"_region.png"))
  print(ggplot() + 
    geom_bar(data=aoe4_subset, 
             aes(x = region),
             colour = 'black'))
  dev.off()
  #tabela elo
  
  png(paste(prefix,"_elo.png"))
  print(ggplot() + 
    geom_bar(data=aoe4_subset, 
             aes(x = elo),
    ))
  dev.off()
  
  #tabela winPercent
  
  png(paste(prefix,"_winPercent.png"))
  print(ggplot() + 
    geom_histogram(data=aoe4_subset, 
                   aes(x = winPercent)))
  dev.off()
  #tabela totalGames
  
  png(paste(prefix,"_totalGames.png"))
  print(ggplot() + 
    geom_bar(data=aoe4_subset, 
             aes(x = totalGames)))
  dev.off()
  
  #tabela winStreak
  
  png(paste(prefix,"_winStreak.png"))
  print(ggplot() + 
    geom_bar(data=aoe4_subset, 
             aes(x = winStreak)))
  dev.off()
  
  
  
}

aoe4_boxplot = function(aoe4_subset, prefix){
  
  #boxplot elo
  
  png(paste(prefix,"_boxplot_elo.png"))
  print(ggplot(data=aoe4_subset, # data frame a ser utilizado
         aes(x=NULL, # utilizar x=NULL para construir um único gráfico de caixa
             y=elo)) + # variável para a construção do gráfico de caixa
    geom_boxplot(fill="lightgrey") + # função para a construção do gráfico de caixa
    labs(x=NULL, y="Elo") + # nomeação dos eixos
    theme_minimal())
  dev.off()
  
  #boxplot winPercent
  
  png(paste(prefix,"_boxplot_winPercent.png"))
  print(ggplot(data=aoe4_subset, # data frame a ser utilizado
         aes(x=NULL, # utilizar x=NULL para construir um único gráfico de caixa
             y=winPercent)) + # variável para a construção do gráfico de caixa
    geom_boxplot(fill="lightgrey") + # função para a construção do gráfico de caixa
    labs(x=NULL, y="winPercent") + # nomeação dos eixos
    theme_minimal())
  dev.off()
  
  #boxplot totalGames
  
  png(paste(prefix,"_boxplot_totalGames.png"))
  print(ggplot(data=aoe4_subset, # data frame a ser utilizado
         aes(x=NULL, # utilizar x=NULL para construir um único gráfico de caixa
             y=totalGames)) + # variável para a construção do gráfico de caixa
    geom_boxplot(fill="lightgrey") + # função para a construção do gráfico de caixa
    labs(x=NULL, y="totalGames") + # nomeação dos eixos
    theme_minimal())
  dev.off()
  
  #boxplot winStreak
  
  png(paste(prefix,"_boxplot_winstreak.png"))
  print(ggplot(data=aoe4_subset, # data frame a ser utilizado
         aes(x=NULL, # utilizar x=NULL para construir um único gráfico de caixa
             y=winStreak)) + # variável para a construção do gráfico de caixa
    geom_boxplot(fill="lightgrey") + # função para a construção do gráfico de caixa
    labs(x=NULL, y="winStreak") + # nomeação dos eixos
    theme_minimal())
  dev.off()
  
}

aoe4_boxplot_conjunto = function(aoe4_subset, prefix){


  #boxplot elo
  png(paste(prefix,"_bpconjunto_elo.png"))
  print(ggplot(data=aoe4_subset, 
       aes(x=region, # construir vários gráficos de caixa baseado na variável tamanho
           y=elo, # variável para a construção do gráfico de caixa
           fill=region)) + # colorir o gráfico de acordo com a variável tamanho
  geom_boxplot(show.legend = F) + # show.legend = F: não imprimir a legenda
  labs(x=NULL, y="ELO") + # nomeação dos eixos
  theme_minimal())
  dev.off()

  #boxplot winrate
  png(paste(prefix,"_bpconjunto_winpercent.png"))
  print(ggplot(data=aoe4_subset, 
       aes(x=region, # construir vários gráficos de caixa baseado na variável tamanho
           y=winPercent, # variável para a construção do gráfico de caixa
           fill=region)) + # colorir o gráfico de acordo com a variável tamanho
  geom_boxplot(show.legend = F) + # show.legend = F: não imprimir a legenda
  labs(x=NULL, y="winPercent") + # nomeação dos eixos
  theme_minimal())
  dev.off()

  #boxplot totalgames

  png(paste(prefix,"_bpconjunto_totalgames.png"))
  print(ggplot(data=aoe4_subset, 
       aes(x=region, # construir vários gráficos de caixa baseado na variável tamanho
           y=totalGames, # variável para a construção do gráfico de caixa
           fill=region)) + # colorir o gráfico de acordo com a variável tamanho
  geom_boxplot(show.legend = F) + # show.legend = F: não imprimir a legenda
  labs(x=NULL, y="Total Games") + # nomeação dos eixos
  theme_minimal())
  dev.off()

  #boxplot winstreak

  png(paste(prefix,"_bpconjunto_winstreak.png"))
  print(ggplot(data=aoe4_subset, 
       aes(x=region, # construir vários gráficos de caixa baseado na variável tamanho
           y=winStreak, # variável para a construção do gráfico de caixa
           fill=region)) + # colorir o gráfico de acordo com a variável tamanho
  geom_boxplot(show.legend = F) + # show.legend = F: não imprimir a legenda
  labs(x=NULL, y="Win Streak") + # nomeação dos eixos
  theme_minimal())
  dev.off()
}