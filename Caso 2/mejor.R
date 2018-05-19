#################### MEJOR ####################

setwd("C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 2")

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
    
    if(!is.element(estado,outcome[,7])){
        stop("Estado inválido")
    }
    
    #Proceso de comparación
    best <- as.data.frame(split(outcome[,c(2,resultado)], outcome[,7])[estado])
    
    best <- suppressWarnings(best[!is.na(as.numeric(as.vector(best[,2]))),])
    
    A <- "ZZ"
    B <- 1e10
    i <- 284
    for (i in 1:nrow(best)){
        
        if((as.numeric(as.vector(best[i,2]))==B) & (as.character(best[i,1])<A)){
            A <- as.character(best[i,1])
            B <- as.numeric(as.vector(best[i,2]))
        } else if((as.numeric(as.vector(best[i,2]))==B) & (as.character(best[i,1])>=A)){
            
        } else if(as.numeric(as.vector(best[i,2]))<B){
            A <- as.character(best[i,1])
            B <- as.numeric(as.vector(best[i,2]))
        } else {
            
        }
        
    }
  
    # Regresa el nombre del hospital con la tasa más baja de mortalidad de 30 días
    print(A) 

}

estado <- "TX"
resultado <- "ataque" #ataque #falla #neumonia
mejor(estado, resultado)
