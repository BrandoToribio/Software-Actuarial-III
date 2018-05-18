setwd("C:/Users/Brando Alberto/Documents/Github")

install.packages("RCurl")
library(RCurl)


if(!dir.exists("data")){dir.create("data")}

url <- "https://data.baltimorecity.gov/api/views/kSry-ef3g/rows.csv?accessType=DOWNLOAD"

download.fie(url, "./data/restaurantes.csv")
data <- read.csv("./data/restaurantes.csv")

#split

data("UCBAdmissions")
DF = as.data.frame(UCBAdmissions)
summary(DF)
xt <- xtabs(Freq ~ Gender + Admit, data = DF)
xt #TABLA DE CONTINGENCIA#

DF

1198/1493
557/1278

warpbreaks$replicate <- rep(1:9, len = 54)
xt = xtabs(breaks ~.,data=warpbreaks)
xt

ftable(xt) #fast table

#TAMAÑO DE UNA TABLA

fakeData = rnorm(1e5) #100,000
object.size(fakeData)
print(object.size(fakeData), units = "Mb")
