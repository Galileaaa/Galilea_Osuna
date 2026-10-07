# Ejercicio 1 - Abundancia de efímeras vs. velocidad del arroyo
#Datos
Velocidad <- c(2,3,5,9,14,24,29,34)
Abundancia <- c(6,3,5,23,16,12,48,43)

plot(Velocidad,Abundancia,
     xlab = "Velocidad del arroyo",
     ylab = "Abundandia de efímeras",
     main = "Relación enntre Velocidad y Abundancia",
     pch = 19, col = "pink")
abline(lm(Abundancia ~ Velocidad), col = "brown", lwd = 2)

cor.test(Velocidad, Abundancia, method = "pearson")

#¿Es estadísticamente significativa la correlación?
# Existe una relación lineal positiva significativa de intensidad fuerte entre
#la velocidad de la corriente y la abundancia de efímeras


# Ejercicio 2 - composiciones del suelo

suelo <- read.csv("suelo.csv", header = TRUE)
if(!require(corrplot)) install.packages("corrplot")
library(corrplot)

vars_suelo <- suelo[,c("pH", "N", "Dens", "P", "Ca", "Mg", "K", "Na")]
matriz_cor <- cor(vars_suelo)
matriz_p <- cor.mtest(vars_suelo)$p
# correlograma
corrplot(matriz_cor, method = "circle", type = "upper", tl.col = "Black", tl.srt = 45)
# tabla de valores
vars_a_probar <- c("N", "Dens", "P", "Ca", "Mg", "K", "Na")
resultados <- data.frame(
  Conjunto = paste("pH -", vars_a_probar),
  r = sapply(vars_a_probar, function(v)cor.test(suelo$pH, suelo[[v]])$estimate),
  p_value = sapply(vars_a_probar,function(v)cor.test(suelo$pH, suelo[[v]])$p.value)
)
resultados

# Ejercicio 3 - El cuarteto de Anscombe

data("anscombe")
par(mfrow = c(2,2))

# Gráfica grupo 1
plot(anscombe$x1, anscombe$y1, main = "Grupo I",xlab = "x1", ylab = "y1", pch = 19, col = "purple", 
     abline(lm(y1 ~ x1, data = anscombe), col = "green", lwd = 2))

# Gráfica grupo 2
plot(anscombe$x2, anscombe$y2, main = "Grupo II",xlab = "x2", ylab = "y2", pch = 19, col = "pink", 
     abline(lm(y2 ~ x2, data = anscombe), col = "blue", lwd = 2))

# Gráfica grupo 2
plot(anscombe$x3, anscombe$y3, main = "Grupo III",xlab = "x3", ylab = "y3", pch = 19, col = "yellow", 
     abline(lm(y3 ~ x3, data = anscombe), col = "red", lwd = 2))

# Gráfica grupo 4
plot(anscombe$x4, anscombe$y4, main = "Grupo IV",xlab = "x4", ylab = "y4", pch = 19, col = "hotpink3", 
     abline(lm(y4 ~ x4, data = anscombe), col = "hotpink", lwd = 2))

par(mfrow = c(1,1))

# prueba de correlación numricas
prueba_I <- cor.test(anscombe$x1, anscombe$y1)
prueba_II <- cor.test(anscombe$x2, anscombe$y2)
prueba_III <- cor.test(anscombe$x3, anscombe$y3)
prueba_IV <- cor.test(anscombe$x4, anscombe$y4)

# datos resumidos 
cat("Grupo I: r = ", round(prueba_I$estimate, 3), "| p-val =", round(prueba_I$p.value,4), "\n")
cat("Grupo II: r = ", round(prueba_I$estimate, 3), "| p-val =", round(prueba_II$p.value,4), "\n")
cat("Grupo III: r = ", round(prueba_I$estimate, 3), "| p-val =", round(prueba_III$p.value,4), "\n")
cat("Grupo IV: r = ", round(prueba_I$estimate, 3), "| p-val =", round(prueba_IV$p.value,4), "\n")

# En todos los casos el valor de p < 0.05, por lo que se rechaza H0

#Grupo I: Es una relación simple adecuada.
#Grupo II: Presenta una relación claramente no lineal( es una curva parabólica).
#Grupo III: Es una relación lineal perfecta, pero tiene un punto atípico.
#Grupo IV: Todos los puntos excepto uno se encuentran alineados verticalmente.





