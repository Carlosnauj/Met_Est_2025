#================================
#################################
#Asignación 5: Correlación
#Juan Carlos Delgado Grarza
# Curso 2025 - Dr. Marco Aurelio González Tagle
#01/10/2025
#################################
#================================
# Ejercicio 1
# Efimeras y la velocidad de un arroyo
efimeras<-data.frame(speed = c(2,3,5,9,14,24,29,34),
                     abundance = c(6,3,5,23,16,12,48,43))

# datos por separado en dos variables
speed <-c(2,3,5,9,14,24,29,34)
abundance <-c(6,3,5,23,16,12,48,43)

# gráfico para ver si hay relación entre velocidad del arroyo y cantidad de efímeras
plot(speed,abundance,
     xlab="Velocidad del arroyo",
     ylab="Abundancia de efimeras",
     col= "red",
     pch =20)

# Prueba de correlación de Pearson
# Esto va a calcula si existe una relación lineal entre velocidad y abundancia
cor.test(speed, abundance, method = "pearson")

#===============================
# Ejercicio 2
# Corelacion entre variables de suelo

# Variables de pH, N, Dencidad,P, Ca, Mg, K, Na

suelo <- data.frame(
  pH = c(5.40, 5.65, 5.14, 5.14, 5.14, 5.10, 4.70),  
  N = c(0.188, 0.165, 0.260, 0.169, 0.164, 0.094, 0.100),  
  Dens = c(0.92, 1.04, 0.95, 1.10, 1.12, 1.22, 1.52),      
  P = c(215, 208, 300, 248, 174, 129, 117),               
  Ca = c(16.35, 12.25, 13.02, 11.92, 14.17, 8.55, 8.74),  
  Mg = c(7.65, 5.15, 5.68, 7.88, 8.12, 6.92, 8.16),      
  K = c(0.72, 0.71, 0.68, 1.09, 0.70, 0.81, 0.39),     
  Na = c(1.14, 0.94, 0.60, 1.01, 2.17, 2.67, 3.32)        
)

# la matriz de correlaciones entre todas las variables del suelo
# Esto nos da los valores de r entre cada par de variables
cor_matrix <- cor(suelo, method = "pearson")
cor_matrix


library(Hmisc)

res <- rcorr(as.matrix(suelo))
res$r   
res$P   


library(corrplot)
#Creamos el gráfico de correlaciones (Figura 2)

corrplot(cor_matrix, method = "circle", type = "upper", 
         tl.col = "black", tl.srt = 45)

#========================================
#Ejercicio 3
# Cargamos el conjunto de datos 'anscombe' 
data(anscombe)

# Ver los datos
anscombe

# Gráficar los 4 conjuntos de datos  
par(mfrow=c(2,2)) # 
for(i in 1:4){
  x <- anscombe[,i]
  y <- anscombe[,i+4]
# Configurar el gráfico de dispersión con una línea de regresión
  plot(x, y, main=paste("Dataset", i),
       xlim = c(4,20), ylim = c(3, 13),
       pch = 19, col = "darkred")
  abline(lm(y ~ x), col = "darkblue")
}
     
# los números de resumen (como media y correlación) son casi iguales en los cuatro casos,
# al ver los gráficos, cada conjunto muestra una relación diferente entre sus variables.

# Calculamos la correlación de Pearson para cada conjunto
for(i in 1:4)
{

  print(cor.test(anscombe[,i],
                 anscombe[,i+4]))
}