##################################
#=================================
# Examen parcial 2
# Dr. Marco Aurelio González Tagle
# Juan Carlos Delgado Garza
# 22/10/2025
#=================================
# Conjunto de datos
# área de estudio: Tropenbos Cameroon Programme (TCP)
# datos encontrados en Dropbox
## Downloading data from:
# https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1
## SHA-1 hash of the downloaded data file is:
## a88edff139da590ccb918ba2fd00b18d2d839509

# código para poder identificarlos como factores
suelo <- read.csv(
  "https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1"
)
suelo$zone <- as.factor(suelo$zone)
suelo$wrb1 <- as.factor(suelo$wrb1)

#========================================================
# Actividades a realizar 1
#========================================================

summary(suelo$Clay1)
## Min. 1st Qu. Median Mean 3rd Qu. Max.
## 10.00 21.00 30.00 31.27 39.00 72.00

summary(suelo$Clay2)
## Min. 1st Qu. Median Mean 3rd Qu. Max.
## 8.00 27.00 36.00 36.75 47.00 75.00

summary(suelo$Clay5)
## Min. 1st Qu. Median Mean 3rd Qu. Max.
## 16.00 36.50 44.00 44.68 54.00 80.00

# P1 ¿Cuál es la tendencia del contenido promedio de Arcilla (Clay) con
# respecto a la profundidad?
# R. va aumentando con respecto a la profundidad

#=========================================================
# Actividad a realizar 2
#=========================================================

# boxplot para el primer perfil Clay1 de Arcilla.
boxplot(
  suelo$Clay1,
  main = "promedio de Arcilla",
  ylab = "Clay",
  col = "pink"
)

# P2 ¿Existe evidencia de outliers?
# R. Si se encuentran outliers afuera de la caja, en la parte superior de
# 60 a 80

# P3 ¿Puede identificar cuáles observaciones son mediante una simple
# restricción de datos? Pista: observe los
# valores mediante el boxplot y haga la restricción
# R. Los valores del boxplot se encuentran del 10 al 65 aproximadamente
# la media tiene un valor de 35 aprximado
# y los outilers se encuentran fuera de la caja en un 70 a 80

#========================================================
# Actividad a realizar 3
#========================================================

# Determine la media de la variable
t.test(suelo$Clay1)
##
## One Sample t-test
##
## data: suelo$Clay1
## t = 27.207, df = 146, p-value < 2.2e-16
## alternative hypothesis: true mean is not equal to 0
## 95 percent confidence interval:
## 29.00045 33.54377
## sample estimates:
## mean of x
## 31.27211

# P4 ¿Estime si el contenido de Arcilla promedio en los suelos tropicales
# de 30 % (media teorética) es
# significativamente diferente que la media observada en el campo
# experimental Tropenbos Cameroon Programme (TCP)?
# R. si existe una diferencia significtiva

#========================================================
# Actividad a realizar 4
#========================================================

# relación entre el contenido de arcilla en los tres perfiles
cor.test(suelo$Clay1, suelo$Clay5, method = "pearson")
##
## Pearson's product-moment correlation
##
## data: suelo$Clay1 and suelo$Clay5
## t = 24.544, df = 145, p-value < 2.2e-16
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
## 0.8610227 0.9251946
## sample estimates:
## cor
## 0.8977721

# P5 ¿Existe una relación positiva, negativa o para nada relacionados,
# entre los perfiles superior (Clay1 ) e
# inferior (Clay5 ) con el contenido de Arcilla?
# R. si existe una correlacion positiva fuerte entre las variables de
# 0.8610227 a 0.9251946

# P7 ¿La correlación es estadísticamente significativa?
# R. si es estaticamente significativa
