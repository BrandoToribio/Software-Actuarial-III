#Extracción de valores faltantes
airquality[1:6,]
completos <- complete.cases(airquality)
data <- airquality[completos,]
data[1:6,]
#Al hacer una extracción desde un vector de lógicos me quedo únicamnte con 
#los valores que son TRUE en su evaluación

#Algunas operaciones
x <- 1:4; y <- 8:9
x + y
x > 2
y == 8
x*y
x > y
x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x
y
x*y
x/y
x%*%y
y%*%x

#ESTRUCTURAS DE CONTROL
#Las estructuras de flujo más comunes son:
#If,else
#For. Ejecuta un ciclo un determinado número de veces.
#While. Ejectua un ciclo mientras se cumpla una condición.
#Repeat. Ejectuta un ciclo infinito
#Garantiza que por lo menos una vez se cumpla la condición
#Break. Termina la ejecución de un ciclo
#Next. "Salta" una interación de un ciclo
#Return. Sale de una función
y <- 10
x <- 2
#IF
if (x<=3) {
  y + 1
} else {
  y + 2
}


x <- 3
if (x==3) {
  y + 1
  print("Igual a 3")
} else if (x < 3){
  y + 2
} else {
  y + 3
}

if (x==3) 
  {
  y + 1
  print("Igual a 3")
} else if (x < 3)
  {
  y + 2
} else 
  {
  y + 3
  }

#La estructura de if/else es un poco diferente de otros lenguajes:
#Una forma:
if(x>3){
  y <- 10
} else {
  y <- 0
}

#Otra forma válida
x <- 4

y <- if(x>3) {
  10
} else {
  0
}
