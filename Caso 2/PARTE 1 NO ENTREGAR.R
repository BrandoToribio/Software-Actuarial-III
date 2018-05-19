##########PARTE 1##########
getwd()
list.files()
setwd("C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 2")

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 

head(outcome) 
ncol(outcome)
names(outcome)

outcome[, 11] <- as.numeric(outcome[, 11])
## You may get a warning about NAs being introduced; that is okay
hist(outcome[, 11]) 

outcome[, 11]
nrow(outcome)

#PUEDE SERVIR:
hd <- read.csv("hospital-data.csv")
sort(a, decreasing = TRUE)
max(a)
match(a,14)
which.max(a)

a <- c("hola","estaba viendo","tren","adios")
b <- c(4,2,3,3)
c <- data.frame(A = a, B = b)
c
c[order(b,a),]