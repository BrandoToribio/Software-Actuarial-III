#Caminata aleatoria
contador <- 0
z <- 5
v <- matrix(10,1) 
#le di un valor inicial (10) cualquiera, pues se cambia en el primer ciclo
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
    z <- z + 1
  } else {
    z <- z -1
  }
  v[contador] <- z
  contador <- contador + 1
}
print(v)
plot(v)