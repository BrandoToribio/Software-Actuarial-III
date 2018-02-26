#Las listas son un tipo especial de vector que contienen elementos de diferentes clases
x <- list(1, "a", TRUE, 3 + 2i, 5L, 1:50)
x
#Se puede decir que una lista es "Un vector de listas"

#Matrices
#Las matrices son vectores con un atributo llamado dimensión, este atributo es un vector
#en si mismo compuesto de dos elementos (nrow, ncol)
#Tienen que ser de una misma clase
m <- matrix(data=1:6, nrow = 2, ncol = 3)
m <- matrix(1:6,2,3)
m <- matrix(NA,2,3)
m <- matrix(1:6,2,3,T)
m
dim(m)
attributes(m)
#Una mantera alternativa de crear una matrix es desde un vector y..
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores
x <-1:3
y <-10:12
#CBind, unir columnas
cbind(x,y)
#rBind unir por filas
rbind(x,y)


mdat <- matrix(c(1,2,3,11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat

#Factores
#Se utilizan para representar datos categóricos. Pueden estar ordenados o no
#Es como si fuera un vector de enteros y cada uno de ellos con una etiqueta
x <- factor(c("Si","Si","No","No","Si"))
x <- factor(c("Azul","Verde","Verde","Azul","Rojo"))
x
table(x)
unclass(x)
x <- factor(c("Azul","Verde","Verde","Azul","Rojo"),
            levels = c("Rojo","Amarillo","Verde","Azul"))
x
unclass(x)
#valores faltantes
x <- c(1,2,NA,10,3)
is.na(x) #valor faltante detectado
is.nan(x) #valor no numérico que no es faltante

y <- c(1,2,NaN,10,3)
is.na(y)
is.nan(y)

#DATA FRAME
#listas son a los vectores lo que Data frames a las matrices
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
x <- 1:3
x <- list(a=1,b=2,c=3)
m <- matrix(1:4, nrow =2,ncol=2)
dimnames(m) <- list(c("a","b"),c("c","d"))
m