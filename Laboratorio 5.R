<<<<<<< HEAD
# Laboratorio 5
# Juan Carlos Delgado Garza

# datos de producción de semillas para los años 2012 y 2013
# se expresa en kg semilla por árbol

#importardatos

sem <- read.csv("mainproduccion.csv", header = T)
sem$Tiempo <- as.factor(sem$Tiempo)

tapply(sem$Kgsem, sem$Tiempo, mean)

boxplot(sem$Kgsem ~ sem$Tiempo,
        col = "navajowhite",
        xlab = "Año",
        ylab = "Semilla (kg)")


t2012 <- subset(sem, sem$Tiempo =="T2012")
t2013 <- subset(sem, sem$Tiempo !="T2012")

=======
#dbh esel diametro de altura de pecho
dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)
#tree son los arboles de pino pero con una secuencia de numeros desde el 1 hasta el 30 (1,2,3,4,5...)
tree <- seq(1,30)
#En las parcelas estoy indicando cuantas columnas y filas quiero con la funcion "gl"
parcelas <- gl(3,10)
#Con "Trees" estoy creando un data.frame con las 3 variables anteriores
Trees <- data.frame(tree,dbh,parcelas)


url <- ("https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_actividades-inspeccion-movilizacion.csv")
inspeccion <- read.csv(url)
head(inspeccion)  



prof_url_2 <- paste0("https://repodatos.atdt.gob.mx/api_update/senasica/",
                     "actividades_inspeccion_movilizacion/",
                     "29_actividades-inspeccion-movilizacion.csv")



senasica <- read.csv(prof_url_2)
head(senasica)

library(repmis) 
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1") ##########




head(conjunto) # muestra las primeras seis filas de la BD
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read.csv(file)
head(inventario)
mean(Trees$dbh)
sd(Trees$dbh)
sum(Trees$dbh < 10)
which(Trees$dbh < 10)
trees.13 <- Trees[!(Trees$parcela=="2"),]
trees.13
trees.1 <- subset(trees, dbh <= 10)
head(trees.1)
mean(Trees$dbh)





mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
hist(mamiferos$total_sleep)

hist(mamiferos$total_sleep, # Datos
     xlim = c(0,20), ylim = c(0,14), 
     main = "Total de horas sueño de las 39 especies", 
     xlab = "Horas sueño", 
     ylab = "Frecuencia", 
     las = 1, 
     col = "navajowhite")
data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds <- table(chickwts$feed)
feeds
barplot(feeds)
barplot(feeds[order(feeds, decreasing = TRUE)])
>>>>>>> 50ba9be425410cdce83dae2a316d7ab885671eba
