#########################################
#Base de datos iris
#########################################

#Base iris 
data("iris")
head(iris)
summary(iris)
str(iris)

###########################################################################################
data_sub <- subset(iris, Species %in% c("versicolor", "virginica"))
table(data_sub$Species)
boxplot(data_sub)



tapply(data_sub$Petal.Length, data_sub$Species, mean)
tapply(data_sub$Petal.Length, data_sub$Species, sd)
 
aggregate(Petal.Length ~ Species, data = data_sub, summary) 

var.test(Petal.Length ~ Species, data = data_sub)
t.test(Petal.Length ~ Species, data = data_sub, var.equal = TRUE)


#Cohen's
versicolor <- data_sub$Petal.Llegth[data_sub$Species == "versicolor"]
versicolor <- data_sub$Petal.Llegth[data_sub$Species == "virginica"]


#########################################################################################


boxplot(Petal.Length ~ Species, data = data_sub,
        main = "Comparacion de Petal.Length entre especies",
        ylab = "Longitud del petalo(cm)",
        col = c("lightblue","peru"))
        
        








