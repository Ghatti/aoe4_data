moda = function(x){
  valores = unique(x)
  contagem = tabulate(match(x, valores))
  saida = sort(valores[contagem==max(contagem)])
  if(max(contagem)!=1)
  {
    print(saida)
    cat ("Número de vezes que a(s) moda(s) se repete(m):", max(contagem))
  } else cat("A variável é amodal")
}
