#media contaminante

mediacontaminante <- function(directorio, contaminante, id){
    
    setwd(directorio)
    
    name <- paste("M", substr(list.files()[1],start = 1,stop = 3))
    c <- read.csv(list.files()[1])[contaminante] #contaminante en monitor i(1)
    mc <- as.matrix(mean(c[!is.na(c)])) #media del contaminante en monitor i(1)
    colnames(mc) <- contaminante
    rownames(mc)[1] <- name
    
    if(length(id) > 1){
        for (i in 2:length(id)){
            
            name <- paste("M", substr(list.files()[i],start = 1,stop = 3))
            c <- read.csv(list.files()[i])[contaminante]
            mc2 <- as.matrix(mean(c[!is.na(c)]))
            colnames(mc2) <- contaminante
            rownames(mc2)[1] <- name
            
            mc <- rbind(mc, mc2) #media de n monitores

        }
        mc
    }else{
        mc
    }
    
} 

x <- "C:/Users/Brando Alberto/Documents/GitHub/Caso 1/specdata"
y <- "sulfate"
z = 1:332 #332

mediacontaminante(x,y,z)

