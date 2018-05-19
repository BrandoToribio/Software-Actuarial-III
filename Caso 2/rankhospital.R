#################### RANK HOSPITAL ####################

setwd("C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 2")

#####Outcome#####
#2. Hospital Name: varchar (50) Lists the name of the hospital.
#7. State: varchar (2) Lists the 2 letter State code in which...
#11. Hospital 30-Day Death (Mortality) Rates from Heart Attack...
#17. Hospital 30-Day Death (Mortality) Rates from Heart Failure...
#23. Hospital 30-Day Death (Mortality) Rates from Pneumonia...

rankhospital <- function(estado, resultado, num = "best") {
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
    #Proceso de reordenamiento
    best <- as.data.frame(split(outcome[,c(2,resultado)], outcome[,7])[estado])
    
    orden1 <- suppressWarnings(c(as.numeric(paste(best[,2]))))
    orden2 <- c(paste(best[,1]))
    best <- best[order(orden1,orden2),]
    orden <- suppressWarnings(!is.na(c(as.numeric(paste(best[,2])))))
    best <- best[orden,]
    # Regresa el nombre del hospital con el puesto dado
    if ((is.numeric(num)==TRUE)&(num<=nrow(best)&(num>0))){
        as.character(best[num,1])
    } else if ((is.numeric(num)==TRUE)&(num>nrow(best))){
        NA
    } else if (num == "mejor"){
        as.character(best[1,1])
    } else if (num == "peor"){
        as.character(best[nrow(best),1])
    } else {
        stop("Rank inválido")
    }
    
}


estado <- "TX"
resultado <- "falla" #ataque #falla #neumonia
num <- 4 #mejor #peor
rankhospital(estado, resultado, num)
