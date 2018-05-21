#################### RANKING COMPLETO ####################

setwd("C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 2")

#####Outcome#####
#2. Hospital Name: varchar (50) Lists the name of the hospital.
#7. State: varchar (2) Lists the 2 letter State code in which...
#11. Hospital 30-Day Death (Mortality) Rates from Heart Attack...
#17. Hospital 30-Day Death (Mortality) Rates from Heart Failure...
#23. Hospital 30-Day Death (Mortality) Rates from Pneumonia...

rankingcompleto <- function(resultado, num = "mejor") {
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
    
    
    # Para cada estado, encuentra el hospital con la posición dada.
    
    total <- data.frame()
    
    for (i in 1:54){ #54 son los estados registrados
        best <- as.data.frame(split(outcome[,c(2,7,resultado)], outcome[,7])[i])
        
        orden1 <- suppressWarnings(c(as.numeric(paste(best[,3]))))
        orden2 <- c(paste(best[,1]))
        best <- best[order(orden1,orden2),]
        orden <- suppressWarnings(!is.na(c(as.numeric(paste(best[,3])))))
        best <- best[orden,]
        best
        if ((is.numeric(num)==TRUE)&(num<=nrow(best)&(num>0))){
            total2 <- best[num,1:2]
            colnames(total2) <- c("hospital","state")
            rownames(total2) <- as.character(best[1,2])
            total <- rbind.data.frame(total,total2)
        } else if ((is.numeric(num)==TRUE)&(num>nrow(best))){
            total2 <- data.frame(NA, as.character(best[1,2]))
            colnames(total2) <- c("hospital","state")
            rownames(total2) <- as.character(best[1,2])
            total <- rbind.data.frame(total, total2)
        } else if (num == "mejor"){
            total2 <- best[1,1:2]
            colnames(total2) <- c("hospital","state")
            rownames(total2) <- as.character(best[1,2])
            total <- rbind.data.frame(total,total2)
        } else if (num == "peor"){
            total2 <- best[nrow(best),1:2]
            colnames(total2) <- c("hospital","state")
            rownames(total2) <- as.character(best[1,2])
            total <- rbind.data.frame(total,total2)
        } else {
            total2 <- data.frame(NA, as.character(best[1,2]))
            colnames(total2) <- c("hospital","state")
            rownames(total2) <- as.character(best[1,2])
            total <- rbind.data.frame(total, total2)
        }
        
    }
    
    # Regresa un data frame con el nombre del hospital y la abreviatura
    # del nombre del estado al que pertenece.
    total
}

resultado <- "ataque" #ataque #falla #neumonia
num <- 20
head(rankingcompleto(resultado,num),10)
tail(rankingcompleto(resultado),10)

