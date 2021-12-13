tab_intv = function(x, minimo=min(x), maximo, regra='sturges'){
  
  if(class(x) != "numeric") stop("x não é numérico")
  if(minimo > min(x)) stop("O valor mínimo não pode ser superior a min(x)")
  if(maximo <= max(x)) stop("O valor máximo deve ser superior a max(x)")
  
  if (regra == "sturges") {cla = 1+3.322*log10(length(x))}
  else if(regra == "raiz") {cla = sqrt(length(x))}
  else stop("Escolha como regra 'sturges' ou 'raiz'")
  
  classes = seq (minimo, maximo, length.out=ceiling(cla)+1)
  x.classes = cut(x, classes, right=FALSE)
  
  n_i <- table(x.classes)
  f_i <- prop.table(n_i)
  N_i <- cumsum(n_i)
  F_i <- cumsum(f_i)
  
  tabela <- cbind(n_i = c(n_i, sum(n_i)),
                  f_i = c(f_i, sum(f_i)),
                  N_i = c(N_i, NA), 
                  F_i = c(F_i, NA))
  
  print(tabela, na.print = "")
  
}
