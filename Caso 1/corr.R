#correlación

corr <- function(directorio, horizonte){
    
    setwd(directorio)
    
    if(horizonte == 0){
        
        c(0)
        
    } else {
    total <- Inf - Inf
       for(i in 1:332){
           
           name <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
           a <- read.csv(list.files()[i]) #monitor i(1)
           a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate)) #casos completos
           h <- sum(a) #horizonte
           
            if(h>=horizonte && is.nan(total)){
                
                s <- read.csv(list.files()[i])[a, ][ ,"sulfate"]
                n <- read.csv(list.files()[i])[a, ][ ,"nitrate"]
                a <- cor(s,n) #
                names(a)[1] = name
                total <- a
                names(total)[length(total)] = name
                
            }else if(h>=horizonte){
                
                s <- read.csv(list.files()[i])[a, ][ ,"sulfate"]
                n <- read.csv(list.files()[i])[a, ][ ,"nitrate"]
                a <- cor(s,n) #
                total <- c(total,a)
                names(total)[length(total)] = name
                
            }else{
                
            }
           
       }
    total
    }
    
} 

x <- "C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III/Caso 1/specdata"
y = 0

corr(x,y)

