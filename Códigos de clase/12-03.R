# Ciclos for
#Toman una variables y les asignarán valores sucesivos de un vector
for(i in 1:10){
  print(i)
}

for(i in c("a","b","c")){
  print(i)
}
#La forma en la que trabaja for en R es similar a "For each" de Visual basic
x <- c("a","b","c","d")

for(i in 1:4){
  print(x[i])
}

print (seq_along(x))

for(i in seq_along(x)){
  print(x[i])
}

for(letra in x){
  print(letra)
}

for(i in 1:4) print(x[i])

#Los ciclos for pueden ser anidados

x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

print (x)
print (nrow(x))
print(ncol(x))
print(seq_len(nrow(x)))
print(seq_len(ncol(x)))

#While
count <- 0
while(count<10){
  print(count)
  count <- count + 1
}

#A veces se evalúa más de una condición
z <- 5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #caminata aleatoria
    z <- z+1
  } else {
      z <- z -1
    }
}
#rbinom(no variables, no intentos, probabilidad de exito)

print(rbinom(1,2,0.50))

#...
set.seed(1)
z <- 5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #caminata aleatoria
    z <- z+1
  } else {
    z <- z -1
  }
}

#contando...
contador <- 0
z <- 5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #caminata aleatoria
    z <- z+1
  } else {
    z <- z -1
  }
contador <- contador + 1
}

print("Se realizaron:");print(contador);print("pasos")

#formando un vector
contador <- 0
z <- 5
v <- matrix(10,1)
while(z>=3 && z<=10){
  
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #caminata aleatoria
    z <- z + 1
  } else {
    z <- z -1
  }
v[contador] <- z
contador <- contador + 1
}
print(v)
plot(v)
plot(v, type= "o")


#formando un vector 2
#set.seed(1)

w <- 0
intentos <-100
x <- vector("numeric")
for(i in 1:intentos){
  z <- 6.5
while(z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)
  x <- c(x,z)
  if(moneda==1){ #caminata aleatoria
    z <- z + 1
  } else {
    z <- z -1
  }
}
  if(z>10){
    w <- w +1 
  }
}
#print(x)
#plot(x, type= "o")
paste("En",intentos,"intentos se sale",w,"veces por arriba y",intentos-w,"veces por abajo")


#Repeat
#la instrucción repeat inicia un ciclo infinito que no parará hasta que 
#se llame un break
i <- 0
repeat{
  i <- i+ 1
  print(paste("Número:",i))
  if(i>= 1000) break
}

#Se utiliza next para no hacer una iteración en un ciclo

for(i in 1:100){
  if(i<=20){
    next
    #evita hacer las primeras 20 iteraciones
  }
  #Otras instrucciones
}

#El comando return