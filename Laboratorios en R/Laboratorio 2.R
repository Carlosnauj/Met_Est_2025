temperatura <- read.csv("temperatura.csv")
View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de filas y columnas
names(temperatura) #nombres de las colunas 
str(temperatura) #estructura del objeto

#Resumen estadisttico
summary(temperatura)

names(temperatura) <- c("anio","Ene","Feb","Mar","Abr","May","Jun",
                        "Jul","Ago","Sep","Oct","Nov","Dic")


names(temperatura)

#crear columna Media_anualcon temperatura media anual
temperatura$Ene
temperatura$Media_anual <- rowMeans(temperatura[,2:13])
head(temperatura)

#crear objeto con medias mensuales de temperatura
media_mensuales <-colMeans(temperatura[,2:13])
media_mensuales

boxplot(temperatura$Ene,
        main="temperarura de enero",
        ylab="°C",
        col="pink")

datos_meses <- temperatura[,2:13]
boxplot(datos_meses,
        main="temperarura",
        ylab="°C",
        col="lightgreen",
        names = c("Ene","Feb","Mar","Abr","May",
                  "Jun","Jul","Ago","Sep","Oct",
                  "Nov","Dic"))


