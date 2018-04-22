library("swirl")
swirl()
#Hay algunas funciones que implementan ciclos de manera inbterna para simplifi-
#car los códigos:
#lapply: Aplica una función a todos los elementos de una lista.
#sapply: Lo mismo que lapply pero intenta simplificar el resultado.
#apply: Aplica una función dentro de los márgenes de un arreglo.
#tapply: Aplica una función sobre los subconjuntos de un vector.
#mapply: Versión multivariante de lapply.

#La función split también es útil al trabajar con estas funciones, 
#particularmente con lapply

#lapply, promedio("character","numeric") = NA (no aplica)
#tapply, t = table

x <- list(a=1:5,b=rnorm(10000)) #b es un vector de 10000 elementos aleatorios
lapply(x, mean) #mean calcula el promedio

x <- list(a = 1:5, b =rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x, mean)

x <- 1:4
lapply(x, runif)

x <- 1:4
lapply(x, runif, max = 15, min = 5)

#Sapply
#Si el resultado es una lista con elementos de tamaño 1, regresará un vector

x <- list(a = 1:5, b =rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x, mean)
sapply(x, mean)

#APPLY
#Esta función se usa ´para aplicar una función a las filas o columnas de una matriz
#se usa para arreglos en general
#no es mas rapido que un ciclo, pero se escribe en una linea

str(apply) #str da información sobre la función
#x es un arreglo, margin es un vector.... ¿?

x <- matrix(rnorm(200),20,10)
apply(x,2, mean)
apply(x,1, mean)

#rowSums = apply(x.1,sum)
#rowMeans = apply(x,1,mean)
#colSums = apply(x.2,sum)
#colMeans = apply(x.2,mean)

x <- matrix(rnorm(200),20,10)
apply(x,1,quantile, probs = c(0.25,0.75))

a <- array(rnorm(2*2*10),c(2,2,10))
apply(a,c(1,2),mean) #3 dimensiones, 1=trabaja sobre margen uno y margen 2=2
rowMeans(a,dims = 2)

#mapply
#Es como si fuera una apply multi... ¿?
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep, 1:4, 4:1) #mapply hace lo mismo que list con rep (repetición)

