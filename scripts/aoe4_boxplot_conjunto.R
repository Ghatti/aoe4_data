setwd("/home/matheus/Code/fac/prob/trab")
source("scripts/lib/aoe4_lib.R")

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


setwd("/home/matheus/Code/fac/prob/trab/boxplot/conjunto/")

aoe4_boxplot_conjunto(aoe4, prefix="tudo_")
aoe4_boxplot_conjunto(aoe4_q3_elo, prefix="q3_elo_")
aoe4_boxplot_conjunto(aoe4_d9_elo, prefix="d9_elo")
aoe4_boxplot_conjunto(aoe4_q3_wr, prefix="q3_wr_")
aoe4_boxplot_conjunto(aoe4_d9_wr, prefix="d9_wr_")

setwd("/home/matheus/Code/fac/prob/trab")