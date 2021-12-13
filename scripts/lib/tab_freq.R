tab_freq = function(x){
  
     n_i <- table(x)
     f_i <- prop.table(n_i)
     N_i <- cumsum(n_i)
     F_i <- cumsum(f_i)
  
  tabela <- cbind(n_i = c(n_i, sum(n_i)),
                  f_i = c(f_i, sum(f_i)),
                  N_i = c(N_i, NA), 
                  F_i = c(F_i, NA))
  
  print(tabela, na.print = "")
  
}
