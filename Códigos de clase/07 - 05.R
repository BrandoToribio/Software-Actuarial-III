
getwd()
setwd("GitHub")

if (!file.exists("specdata")) {
    dir.create("specdata")
}

download.file() #Descarga un archivo desde internet, algunos parametros impor-
#tantes son url, destfile, method, �til para descaregar archivos delimitados
#por tabulaciones, csv, etc.

fechadescarga <- date()
fechadescarga

urlArchivo <- "https://data.baltimore.....URL"
download.file(urlArchivo, destfile = "~/nombre con el que se guardar�.csv")

datoscamara <- read.table("./data/camaras.csv") #Es la principal funci�n para 
#leer y cargar los datos en R. Es la m�s flexible y robusta, pero requiere m�s
#par�metros. Carga los datos en la memoria RAM
datoscamara <- read.table("./data/camaras.csv", sep = ",", header = TRUE )
