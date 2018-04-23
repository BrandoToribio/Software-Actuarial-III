#completos

completos <- function(directorio, id){
    
    setwd(directorio)
    
    name <- paste("Monitor", substr(list.files()[1],start = 1,stop = 3))
    a <- read.csv(list.files()[1]) #monitor i(1)
    a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate)) #casos completos
    a <- sum(a) #nobs
    nobs <- data.frame(matrix(c(name, a), nrow = 1)) #se convierte en dataframe
    
    if(length(id) > 1){
        for (i in 2:length(id)){
            
            name <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
            a <- read.csv(list.files()[i]) #monitor i(1)
            a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate)) #casos completos
            a <- sum(a)
            nobs2 <- data.frame(matrix(c(name, a), nrow = 1))
            
            nobs <- rbind(nobs, nobs2) #unión de data frames
            
        }
        
        colnames(nobs)[1] = "id"
        colnames(nobs)[2] = "nobs"
        nobs
        
    }else{
        colnames(nobs)[1] = "id"
        colnames(nobs)[2] = "nobs"
        nobs
    }
    
} 

x <- "C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 1/specdata"
y = 1:332 #332

completos(x,y)
