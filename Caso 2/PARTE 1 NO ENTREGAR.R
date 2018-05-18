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
