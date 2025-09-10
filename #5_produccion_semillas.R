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




