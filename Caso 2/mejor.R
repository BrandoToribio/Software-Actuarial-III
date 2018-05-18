#################### MEJOR ####################

setwd("C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 2")
estado <- "AL"
resultado <- "ataque"

#####Outcome#####
#2. Hospital Name: varchar (50) Lists the name of the hospital.
#7. State: varchar (2) Lists the 2 letter State code in which...
#11. Hospital 30-Day Death (Mortality) Rates from Heart Attack...
#17. Hospital 30-Day Death (Mortality) Rates from Heart Failure...
#23. Hospital 30-Day Death (Mortality) Rates from Pneumonia...

mejor <- function(estado, resultado){
    # Lectura de datos
    outcome <- read.csv("outcome-of-care-measures.csv")
    # Revisión de la validez de estado y resultado
    if (resultado == "ataque"){
        resultado <- 11
    } else if (resultado == "falla") {
        resultado <- 17 
    } else if (resultado == "neumonia"){
        resultado <- 23
    } else {
        stop("Resultado inválido")
    }
    ####VALIDAAAAAAAAAAAAAAAAAAAAR PARA ESTADO#
    #Proceso de comparación
    best <- as.data.frame(split(outcome[,c(2,resultado)], outcome[,7])[estado])
    
    best <- best[!is.na(as.numeric(as.vector(best[,2]))),]
    
    A <- "ZZ"
    B <- 1e100
    
    for (i in nrow(best)){
        
        if(best[i,2]==B & substr(best[i,1],1,1)<A){
            A <- best[i,1]   
        } else if(best[i,2]==B & substr(best[i,1],1,1)>=A){
            
        } else if(best[i,2]<B & substr(best[i,1],1,1)<A){
            A <- best[i,1]
        } else {
            
        }
        
    }
    # Regresa el nombre del hospital con la tasa más baja de mortalidad de 30 días
}









as.character(A)


mejor2 <- mejor[15,1]
as.character(mejor2)

a <- matrix(1:24, nrow = 4)
a
a <- c(1:199)
sort(a, decreasing = TRUE)
max(a)
match(a,14)
which.max(a)

table(head(mejor))
summary(as.data.frame(mejor[,3][c(1:10)]))
is.na(mejor[,3])

class(as.data.frame(mejor[,3][c(1:10)])[2,1])


hospitales <- hospitales[!is.na(hospitales[,3])]

class(hospitales)

outcome[,c(2,11,7)]
?split

outcome[,2]




class(split(outcome[,7], outcome[,7])$"TX")


as.data.frame(outcome[1003:2000,7])
?summary

tail(outcome)
a <- outcome[,7]
summary(a)

head(hd)
colnames(hd)
hd[,7]

head(outcome)
colnames(outcome)
outcome[,23]


