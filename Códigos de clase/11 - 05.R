setwd("~/")
setwd("./Biblioteca")
setwd("../")
getwd()

tail(list.files(),2)

#Descarga

setwd("C:/Users/Brando Alberto/Documents/GitHub/Software-Actuarial-III")

if (!file.exists("data")) {
    dir.create("data")
}

list.files()

urlArchivo <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(urlArchivo, destfile = "./data/camaras.csv")
list.files("./data")

fechaDescarga <- date()
fechaDescarga

datosCamara <- read.table("./data/camaras.csv")
head(datosCamara)

datosCamara <- read.table("./data/camaras.csv",
                          sep = ",", header = T)
head(datosCamara)

datosCamara <- read.csv("./data/camaras.csv")
head(datosCamara)


if(!file.exists("data")){dir.create("data")}
url <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(url, destfile = "./data/camaras.xlsx", method = "curl")
    fechaDescarga <- date()
    
#xlsx
    
install.packages("rJava")
install.packages("xlsx")
library("rJava"); library(xlsx)
DatosCamara <- read.xlsx2("./data/camaras.xlsx",sheetIndex = 1, header = TRUE)
head(DatosCamara) 

colIndex <- 2:3
rowIndex <- 1:4
subConjunto <- read.xlsx("./data/camaras.xlsx", sheetIndex = 1,
                         colIndex = colIndex, rowIndex = rowIndex)
subConjunto

#xml

install.packages("XML")
library(XML)
#url <- "https://medlineplus.gov/xml/mplus_topics_2018-05-11.xml"
#url <- "https://medlineplus.gov/xml/mplus_topic_groups_2018-05-11.xml"
url <- "http://www.w3schools.com/xml/simple.xml"
data <- xmlTreeParse(url,useInternalNodes = TRUE)
nodoRaiz <- xmlRoot(data)
xmlName(nodoRaiz)
names(nodoRaiz)

#Json GOOD

install.packages("jsonlite")
library(jsonlite)
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)

jsonData$name

myjson <- toJSON(iris, pretty=TRUE)
cat(myjson)

iris2 <- fromJSON(myjson)
head(iris2)

#data.table 

install.packages("data.table")
library(data.table)
DF = data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DF,3)
DT = data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
head(DT,3)

tables()

DT[2,]
DT[DT$y == "a",]
DT[c(2,3)]
DT[,c(2,3)]

{
    x = 1
    y = 2
}
k = {print("hola");5}
print(k)

DT[,list(mean(x),sum(z))]
DT[,table(y)]

DT[,w:=z^2]
DT

DT2 <- DT
DT[,y:=2]
DT

head(DT)
head(DT2)

DT1 <- data.table(x=c('a','a','b','dt1'),y=1:4)
DT2 <- data.table(x=c('a','b','dt2'),z=5:7)
setkey(DT1,x);setkey(DT2,x)
merge(DT1,DT2)


#SQL

install.packages("RMySQL")
library(RMySQL)
ucscDb <- dbConnect(MySQL(),user="genome",
                    host="genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb,"show databases;"); dbDisconnect(ucscDb);
result

hg19 <- dbConnect(MySQL(),user="genome",db="hg19",
                  host="genome-mysql.cse.ucsc.edu")
tablas <- dbListTables(hg19)
length(tablas)
tablas[1:3]

dbListFields(hg19,"affyU133Plus2")

dbGetQuery(hg19,"select count(*) from affyU133Plus2")

affyData <- dbReadTable(hg19,"affyU133Plus2")
head(affyData)

query <- dbSendQuery(hg19, "select * from affyU133Plus2
where misMatches between 1 and 3")
affyMis <- fetch(query); quantile(affyMis$misMatches)

affyMisSmall <- fetch(query,n=10); dbClearResult(query)

dim(affyMisSmall)

dbDisconnect(hg19)
