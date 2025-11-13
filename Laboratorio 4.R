#Pruebas de t
#Caso de muestras independientes
#MAGT
#27/08/2025

#Exportar datos de indice de calidad

calidad <- read.csv("Calidad_planta.csv", header = T)

calidad$Tratamiento <- as.factor(calidad$Tratamiento)

colores <- c("navajowhite", "skyblue")
boxplot(calidad$IE ~ calidad$Tratamiento,
        col= colores,
        xlab = "Tratamientos",
        ylab = "indice calidad",
        ylim = c(0.4,1.2),
        main = "Vivero Iturbide")

# Estadistica descriptivas
# tapply sirve para optener un valor cuando contamos
# con varios grupos

tapply(calidad$IE, calidad$Tratamiento, mean)
tapply(calidad$IE, calidad$Tratamiento, var)

# Observamos que la varianza del grupo fert es 3 veces 
# más grande que el grupo control (ctrl)

# Revisar el comportamiendto de los datos
library("ggplot2")

ggplot(calidad, aes(x = IE, color = Tratamiento))+
  geom_density()
