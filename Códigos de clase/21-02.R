x<-1
x<-2 #Asignación de valor
print(x) #Impresión de valor
msg <- "Hola" #Asignación de texto
print(msg)
x <- #Expresión incompleta, en la consola aparecerá "+"
x <- #Para salir de su ejecución ("+"), presionar Esc en la consola
#Impresión de un arreglo
x <- 1:20
x
y <- 3:9
y
z <- 99:43
z
#El operador ":" me permite generar secuenciaas númericas de k a n
w <- 3:14.7
w #Se aplica la función piso
x
z
#R tiene 5 clases básicas o atómicas de objetos:
#character(caracteres), numeric (reales), integer, complex, logical(booleanos)
#se pueden crear vectores vacios con  la función vector()
#Un vector solo puede contener objetos de una sola clase
#Aunque se puede usar una lista, que es en esencia un vector, pero que
#si admite distintos tipos de clase entre sus elementos
#(de hecho para eso existen)
#Los valores númericos son tratados tipicamente como objetos númericos
#(numeric/double...)
#1 es un objeto númerico
#1L es un entero
#R entiende el concepto de infinito, Inf = 1/0
#exp(-Inf) o 1/0
#NaN - Not a number, puede probarse: Inf - Inf
#Inf + Inf sí es válido
#Los objetos en R tienen atributos como:
#Nombres, nombre de dimensión
#Dimensión
#Clases
#Largo
#Los atributos de un objeto pueden ser revisados con attributes(z)*
#Es posible crear un vector con la función c()
y <- c(TRUE,FALSE,TRUE, TRUE, F, F, T) #logical
x <- c(1L,3L, 5L, -4L, 2L, 4L) #Integer
x <- c(1.3, 5, -4) #numeric
x <- c(1+1i, 3-4i,-5-6i,3.14-1.618i) #Complex
x <- c("a","b","hola","mundo") #character

#otro posible camino seria la función vector
x <- vector("numeric",length = 10)
#El vector se crea vacío
y <- c(1.7,"a") #se convierte en character por "a"
y <- c(TRUE, 2) #se convierte en numerico
y <- c(TRUE, 2L) #se convierte en entero
y <- c(TRUE, 2L, 2) #numeric
y <- c(FALSE, 2L, 5, 5-4i) #complex
#Todo eso se llamó coacción
#character>complex>numeric>integer>logical

#Coacción explícita (coacción forzada)
#Los objetos se pueden coaccionar de una clase a otra cuando se usan
#las funciones as.*
#Las coacciones sin sentido se convierten en NA(no hay un valor) (Not available)
x <- 0:6 #Integer
as.numeric(x) #Numeric
as.logical(x) #Logical -Los 0 se vuelven False y todo lo demás en True
as.character(x) #Todo es texto
#Errores en la coacción forzada
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)
#aparecera NA porque esa coerción no es posible y genera un...