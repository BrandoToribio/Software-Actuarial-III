rnorm(10,1,0.5)
#Vectorizar una función
noise <- function(n, mean, sd){
    rnorm(n, mean, sd)
}

noise(5, 1, 2)

noise(1:5, 1:5, 2)

mapply(noise(1:5, 1:5, 2))
#Estructura
str(tapply)
#x: vector, index: un factor o lista de factores, fun: funcion a aplicar
#...:otros argumentos a pasar a FUN, simplify: se debe simplificar el resultado
