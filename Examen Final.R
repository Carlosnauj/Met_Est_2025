#=====================================================
#Examen final
#20/11/2025
#Juan Carlos Delgado Garza
#=====================================================

#Datos importados de excel

Ejercicio.csv.r <- read.csv("C:/Users/Usuario.PC24.001/Downloads/Ejercicio.csv.r.csv")

############################################################
# A) Prefunta de investigación 
# ¿Existe alguna relación en el diámetro del pecho y la altura total de los árboles?

#==============================================================
##############################
# b) Hipótesis

# (H0) No hay correlación entre diámetro y altura
# (H1) Existe correlación entre diámetro y altura

#================================================================
##############################
# c) Estadística descriptiva

#Incluyan: media, mediana, desviación estándar, mínimo, máximo y nnn.

summary(Ejercicio.csv.r)

media_diam <- mean(Ejercicio.csv.r$DAP_cm)
media_alt <- mean(Ejercicio.csv.r$Altura_m)
sd_diam <- sd(Ejercicio.csv.r$DAP_cm)
sd_alt <- sd(Ejercicio.csv.r$Altura_m)
n <- nrow(Ejercicio.csv.r)

#Agreguen una breve interpretación de los patrones observados.
# Los resultados arrjaron que el Dap minimo es 12.87 y la altura minima fue 9.60, el dap maximo arrojo 36.03 y Altura Max 25.18

#========================================================================
#########################################
#d) Método estadístico

cor_test <- cor.test(Ejercicio.csv.r$DAP_cm,
                     Ejercicio.csv.r$Altura_m,
                     method = "pearson")

#=====================================================================
#########################################
#e) Presentación de resultados

# Gráfico de dispersión con línea de regresión
plot(Ejercicio.csv.r$DAP_cm,
     Ejercicio.csv.r$Altura_m,
     pch = 19, col = "blue",
     xlab = "Diámetro (cm)", ylab = "Altura (m)",
     main = "Diámetro vs Altura")
abline(lm(Altura_m ~ DAP_cm, data = Ejercicio.csv.r),
       col = "red", lwd = 2)

# En el cor.test el resultado me dio:
# r = -0.132169 
# p-valor = 0.4863

#======================================================================
######################################################################
# Conclusión
# Si el valor p es menor a 0.05, rechazamos la hipótesis nula
if (cor_test$p.value < 0.05) {
  cat("Se rechaza la hipótesis nula (H0).\n")
  cat("Hay evidencia de que el diámetro (DAP_cm) y la altura (Altura_m) de los árboles están relacionados.\n")
} else {
  cat("No se rechaza la hipótesis nula (H0).\n")
  cat("No hay una relacion en el diametro y la altura.\n")
}

# Interpretación ecológica simple
cat("\nInterpretación ecológica:\n")
cat("Los árboles con mayor diámetro suelen ser más altos. Esto tiene sentido porque los árboles grandes compiten mejor por luz y espacio en el bosque.\n")


 
 


