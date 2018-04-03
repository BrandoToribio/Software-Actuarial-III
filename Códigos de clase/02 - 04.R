#Scooping rules
lm #regresion lineal
lm <- function(x){x*x} 
lm(3)
rm(lm)
lm

#Unión de valores a simbolos
#Orden den búsqueda es:
#1. Buscar en el entorno global por el objeto
#2. Buscar en los espacios de trabajo de cada paquete en la lista de búsqueda

library(swirl)
install.packages("swirl")
library("swirl")
swirl()
#Brando
Brando
#Entorno: collección de variable, pares... ¿?

hacer.potencia <- function(n){
  potencia <- function(x){
    x^n
  }
  potencia
  }

#Estático vs dinámico
y <- 10

f <- function(x){
  y <- 2
  y^2 + g(x)
}

g <- function(x){
  x*y
}

f(3)


search()

01234567890123456789012345678901234567890123456789012345678901234567890123456789

x <- as.Date("1970-01-01")
x
unclass(x)

today <- unclass(as.Date("2018-04-01"))
WWII <- unclass(as.Date("1939-09-01"))

a <- today - WWII
a

weekdays(as.Date("0000-02-29"))
months(as.Date("1521-08-10"))
quarters(as.Date("1521-08-10"))

weeksdays(as.Date("1996-04-10"))
a <- as.POSIXct("1996-04-10") #lista
b <- as.POSIXlt("1996-04-10") #base de datos
