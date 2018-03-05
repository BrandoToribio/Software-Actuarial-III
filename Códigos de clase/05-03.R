#Con dput se convierte el objeto en código en R
#Se obtiene el objeto de vuelta con dget
#Objetos múltiples pueden de construirse con la función dump y leerse de vuelta
#con source

setwd("~/Github/Software-Actuarial-III")
x <- "Software Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
x
y
source("data.R")

#guardar el objeto /dput y dget
#guardar la forma en la que haces el objeto /dump y source

#CONEXIONES
#Los datos se leen usando interfaces de conexiones, normalmente,
#las conexiones se convierten en archivos.
#descripion, es el nomnre del archivo
#open, es un código que indica:
#r, solo lectura
#w, escribir (inicializa un archivo nuevo)
#a, adjuntar
#rb, wb, ab, es para leer, escribir o adjuntar un archivo binario

con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con,7)
x
writeLines(readLines(con),"FCFM.txt")

con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con)
x[7] <- "\t<title> Estaríamos mejor con otro rector</title>"
writeLines(x,"FCFM.html")

# Subconjuntos
# [, regresa un objeto de la misma clase del original. Puede extraer varios elementos de la lista
#[[, Es usado para extraer un elemento de una lista o data frame. Solamente extrae un elemento
#$, Se usa para extraer elementos de una lista o data frame por nombre

#Creamos un vector
x <- c("a","b","c","d","e")
#Veamos el vector
x
#Extraemos elementos con []
x[1]
x[2]
#También podemoes extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restricción
x[x>"b"]
#De manera equivalente se puede obtener un vector lógico
u <- x == "c"
u
x[u]


#Creamos una lista
x <- list(foo=1:4,bar=0.6)
x
x[1] #conserva la clase de objeto
#El resultado es una lista que contiene al vector de la secuencia
x[[1]] #conserv....? EL VECTOR
#El resultado es el vector de la secuencia de numeros

x$foo 
#El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6, baz = "Hola")
x[c(1,3)]
#Extrae elementos no secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]]
#Extrae secuencialmente desde los elementos extraidos
#Primero extrae el 1er elemento y de ahí extrae la 3ra posición

name <- "baz"
x[name]
x[[name]]
x$name
#Si quiero realizar extracciones con el $ es necesario escribir el nombre
#del objeto

x <- matrix(1:6,2,3)
x
x[1,2]
x[2,1]
x[1,]
x[,2]

#Con drop = false, se mantiene la dimensión y el resultado será una matriz
x[1,2, drop = FALSE]

x[1, , drop = FALSE]

#Subconjuntos con nombres
x <- list(aardvark = 1:5)
x$a
x[["a"]]

x[["a", exact=FALSE]]

a<- mtcars$mpg/mtcars$cyl
a[15]
