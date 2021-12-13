setwd("/home/matheus/Code/fac/prob/trab")

aoe4_data <- read.table(file="data/aoe4.txt", header = TRUE, colClasses=c("numeric", "factor", rep("numeric", 3)))

aoe4 <- data.frame(aoe4_data)

####global

q3_elo = quantile(aoe4$elo, .75)
d9_elo = quantile(aoe4$elo, .9)
q3_wr = quantile(aoe4$winPercent, .75)
d9_wr = quantile(aoe4$winPercent, .9)

aoe4_q3_elo <- subset(aoe4, elo >= q3_elo)
aoe4_d9_elo <- subset(aoe4, elo >= d9_elo)
aoe4_q3_wr <- subset(aoe4, winPercent >= q3_wr)
aoe4_d9_wr <- subset(aoe4, winPercent >= d9_wr)

#### Africa

aoe4_africa <- subset(aoe4, region=="Africa")
q3_elo = quantile(aoe4_africa$elo, .75)
d9_elo = quantile(aoe4_africa$elo, .9)
q3_wr = quantile(aoe4_africa$winPercent, .75)
d9_wr = quantile(aoe4_africa$winPercent, .9)


africa_q3_elo <- subset(aoe4_africa, elo >= q3_elo)
africa_d9_elo <- subset(aoe4_africa, elo >= d9_elo)
africa_q3_winpercent <- subset(aoe4_africa, winPercent >= q3_wr)
africa_d9_winpercent <- subset(aoe4_africa, winPercent >= d9_wr)


#### Asia

aoe4_asia <- subset(aoe4, region=="Asia")

q3_elo = quantile(aoe4_asia$elo, .75)
d9_elo = quantile(aoe4_asia$elo, .9)
q3_wr = quantile(aoe4_asia$winPercent, .75)
d9_wr = quantile(aoe4_asia$winPercent, .9)

asia_q3_elo <- subset(aoe4_asia, elo >= q3_elo)
asia_d9_elo <- subset(aoe4_asia, elo >= d9_elo)
asia_q3_winpercent <- subset(aoe4_asia, winPercent >= q3_wr)
asia_d9_winpercent <- subset(aoe4_asia, winPercent >= d9_wr)


#### Europa

aoe4_europe <- subset(aoe4, region=="Europe")

q3_elo = quantile(aoe4_europe$elo, .75)
d9_elo = quantile(aoe4_europe$elo, .9)
q3_wr = quantile(aoe4_europe$winPercent, .75)
d9_wr = quantile(aoe4_europe$winPercent, .9)

europe_q3_elo <- subset(aoe4_europe, elo >= q3_elo)
europe_d9_elo <- subset(aoe4_europe, elo >= d9_elo)
europe_q3_winpercent <- subset(aoe4_europe, winPercent >= q3_wr)
europe_d9_winpercent <- subset(aoe4_europe, winPercent >= d9_wr)

#### Middle East

aoe4_middleeast <- subset(aoe4, region=="Middle East")

q3_elo = quantile(aoe4_middleeast$elo, .75)
d9_elo = quantile(aoe4_middleeast$elo, .9)
q3_wr = quantile(aoe4_middleeast$winPercent, .75)
d9_wr = quantile(aoe4_middleeast$winPercent, .9)

middleeast_q3_elo <- subset(aoe4_middleeast, elo >= q3_elo)
middleeast_d9_elo <- subset(aoe4_middleeast, elo >= d9_elo)
middleeast_q3_winpercent <- subset(aoe4_middleeast, winPercent >= q3_wr)
middleeast_d9_winpercent <- subset(aoe4_middleeast, winPercent >= d9_wr)


#### NorthAmerica

aoe4_northamerica <- subset(aoe4, region=="North America")

q3_elo = quantile(aoe4_northamerica$elo, .75)
d9_elo = quantile(aoe4_northamerica$elo, .9)
q3_wr = quantile(aoe4_northamerica$winPercent, .75)
d9_wr = quantile(aoe4_northamerica$winPercent, .9)

northamerica_q3_elo <- subset(aoe4_northamerica, elo >= q3_elo)
northamerica_d9_elo <- subset(aoe4_northamerica, elo >= d9_elo)
northamerica_q3_winpercent <- subset(aoe4_northamerica, winPercent >= q3_wr)
northamerica_d9_winpercent <- subset(aoe4_northamerica, winPercent >= d9_wr)


#### SouthAmerica
aoe4_southamerica <- subset(aoe4, region=="South America")

q3_elo = quantile(aoe4_southamerica$elo, .75)
d9_elo = quantile(aoe4_southamerica$elo, .9)
q3_wr = quantile(aoe4_southamerica$winPercent, .75)
d9_wr = quantile(aoe4_southamerica$winPercent, .9)

southamerica_q3_elo <- subset(aoe4_southamerica, elo >= q3_elo)
southamerica_d9_elo <- subset(aoe4_southamerica, elo >= d9_elo)
southamerica_q3_winpercent <- subset(aoe4_southamerica, winPercent >= q3_wr)
southamerica_d9_winpercent <- subset(aoe4_southamerica, winPercent >= d9_wr)

#### Oceania

aoe4_oceania <- subset(aoe4, region=="Oceania")

q3_elo = quantile(aoe4_oceania$elo, .75)
d9_elo = quantile(aoe4_oceania$elo, .9)
q3_wr = quantile(aoe4_oceania$winPercent, .75)
d9_wr = quantile(aoe4_oceania$winPercent, .9)

oceania_q3_elo <- subset(aoe4_oceania, elo >= q3_elo)
oceania_d9_elo <- subset(aoe4_oceania, elo >= d9_elo)
oceania_q3_winpercent <- subset(aoe4_oceania, winPercent >= q3_wr)
oceania_d9_winpercent <- subset(aoe4_oceania, winPercent >= d9_wr)


#tudo

setwd("/home/matheus/Code/fac/prob/trab/boxplot/tudo")
aoe4_boxplot(aoe4, prefix="global_")
aoe4_boxplot(aoe4_africa, prefix="africa_")
aoe4_boxplot(aoe4_asia, prefix="asia_")
aoe4_boxplot(aoe4_europe, prefix="europe_")
aoe4_boxplot(aoe4_middleeast, prefix="middleeast_")
aoe4_boxplot(aoe4_northamerica, prefix="northamerica_")
aoe4_boxplot(aoe4_southamerica, prefix="southamerica_")
aoe4_boxplot(aoe4_oceania, prefix="oceania_")

aoe4_boxplot_conjunto(aoe4, prefix="global_")
#q3_elo


setwd("/home/matheus/Code/fac/prob/trab/boxplot/q3_elo")
aoe4_boxplot(aoe4_q3_elo, prefix="global_")
aoe4_boxplot(africa_q3_elo, prefix="africa_")
aoe4_boxplot(asia_q3_elo, prefix="asia_")
aoe4_boxplot(europe_q3_elo, prefix="europe_")
aoe4_boxplot(middleeast_q3_elo, prefix="middleeast_")
aoe4_boxplot(northamerica_q3_elo, prefix="northamerica_")
aoe4_boxplot(southamerica_q3_elo, prefix="southamerica_")
aoe4_boxplot(oceania_q3_elo, prefix="oceania_")

aoe4_boxplot_conjunto(aoe4_q3_elo, prefix="global_")
#d9_elo


setwd("/home/matheus/Code/fac/prob/trab/boxplot/d9_elo")
aoe4_boxplot(aoe4_d9_elo, prefix="global_")
aoe4_boxplot(africa_d9_elo, prefix="africa_")
aoe4_boxplot(asia_d9_elo, prefix="asia_")
aoe4_boxplot(europe_d9_elo, prefix="europe_")
aoe4_boxplot(middleeast_d9_elo, prefix="middleeast_")
aoe4_boxplot(northamerica_d9_elo, prefix="northamerica_")
aoe4_boxplot(southamerica_d9_elo, prefix="southamerica_")
aoe4_boxplot(oceania_d9_elo, prefix="oceania_")

aoe4_boxplot_conjunto(aoe4_d9_elo, prefix="global_")
#q3_winrate


setwd("/home/matheus/Code/fac/prob/trab/boxplot/q3_winpercent")
aoe4_boxplot(aoe4_q3_wr, prefix="global_")
aoe4_boxplot(africa_q3_winpercent, prefix="africa_")
aoe4_boxplot(asia_q3_winpercent, prefix="asia_")
aoe4_boxplot(europe_q3_winpercent, prefix="europe_")
aoe4_boxplot(middleeast_q3_winpercent, prefix="middleeast_")
aoe4_boxplot(northamerica_q3_winpercent, prefix="northamerica_")
aoe4_boxplot(southamerica_q3_winpercent, prefix="southamerica_")
aoe4_boxplot(oceania_q3_winpercent, prefix="oceania_")

aoe4_boxplot_conjunto(aoe4_q3_wr, prefix="global_")
#d9_winrate


setwd("/home/matheus/Code/fac/prob/trab/boxplot/d9_winpercent")
aoe4_boxplot(aoe4_d9_wr, prefix="global_")
aoe4_boxplot(africa_d9_winpercent, prefix="africa_")
aoe4_boxplot(asia_d9_winpercent, prefix="asia_")
aoe4_boxplot(europe_d9_winpercent, prefix="europe_")
aoe4_boxplot(middleeast_d9_winpercent, prefix="middleeast_")
aoe4_boxplot(northamerica_d9_winpercent, prefix="northamerica_")
aoe4_boxplot(southamerica_d9_winpercent, prefix="southamerica_")
aoe4_boxplot(oceania_d9_winpercent, prefix="oceania_")

aoe4_boxplot_conjunto(aoe4_d9_wr, prefix="global_")

setwd("/home/matheus/Code/fac/prob/trab")
