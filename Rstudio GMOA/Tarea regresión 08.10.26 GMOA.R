# Tarea regresión 08/10/26
#Galilea Marlenn Osuna A.
# Ejercicio 1

Datos <- read.csv("erupciones_1.csv", header= TRUE)

# Gráfica de disperción
plot (Datos$waiting, erupciones$eruptions,
      xlab ="Tiempo de espera (min)",
      ylab ="Duración de la erupción (min)",
      pch = 19, col = "pink")
# Estadísticas descriptivas de ambas variables

# media de la variable "waiting"
mean(Datos$waiting)
# media de l variable "eruptions"
mean(Datos$eruptions)
# desviación estándar de la variable "waiting"
sd(Datos$waiting)
# desviación estándar de la variable "eruptions"
sd(Datos$eruptions)
# varianza de la variable de "waiting"
var(Datos$waiting)
# varianza de la variable "eruptions"
var(Datos$eruptions)

# ¿Cuál es el coeficiente de correlación (r)?
cor.test(Datos$waiting,Datos$eruptions)
# ¿Es significativa la correlación?
# si es estadísticamente significativa. 

# Regresión lineal 
Datos <- lm(eruptions ~ waiting, data = Datos)
summary(Datos)
# establecer la hipótesis nula
# Se rechaza la hipótesis nula de que la correlación es cero, pues p < 0.05

# establecer la hipótesis alternativa
# Existe una corelación significativa entre el tiempo de espera y la duración de la erupción

# ¿Cuál es el valor del intercepto(α)?
# -1.874016

# ¿Cuál es el valor de la pendiente(β)?
# 0.075628

# Realizar un análisis de regresión
plot (erupciones$waiting, erupciones$eruptions,
      xlab ="Tiempo de espera (min)",
      ylab ="Duración de la erupción (min)",
      main = "Regresión lineal simple",
      pch = 19, col = "hotpink")

# Son significativas las regresoras: intercepto(α) y lapendiente(β) ?
# como p-value es un número significativamente parecido a 0, se rechaza la hipotesís nula. Osea, es estadisticamente significativa.

#¿Cuál será la duración en minutos de la proxima erupción?
datos_2 <- c(80, 40, 45, 53, 61)
duraciones_predichas <- -1.874016 + 0.075628* datos_2
duraciones_predichas
# Estimar el valor de y prima para los valores de x dados
Datos$yprima <- modelo$fitted.values
head(Datos)



#Ejercicio 2
Datos <- read.csv("datos_control_Rascon.csv", header= TRUE)

# Gráfica de disperción
plot (Datos$EDAD, Datos$DAP,
      xlab ="Edad del árbol (años)",
      ylab ="DAP (cm)",
      main = "Relación entre Edad y DAP",
      pch = 19, col = "deeppink")

# Regresión lineal
modelo2 <- lm(DAP ~ EDAD, data = Datos)
summary(modelo2)
abline(modelo2, col = "deeppink3", lwd = 2)

# establecer la Hipótesis nula
# es practicamente cero

# establecer la Hipótesis alternativa
# si existe una relación significativa. la edad el árbol si influye de manera significativa sobre el DAP.

# ¿Cuál es el valor del intercepto (α)?
# 10.74671

# ¿Cuál es el valor de la pendiente (β)?
# 0.26013

#Realizar un análisis de regresión 
plot (Datos$EDAD,Datos$DAP,
      xlab ="Edad del árbol (años)",
      ylab ="DAP (cm)",
      main = "Relación entre Edad y DAP",
      pch = 19, col = "hotpink3")

#Son significativas las regresoras intercepto (α) y la pendiente (β) ?
# Es menor a 0, por lo tanto si es estadisticamente significativo para ambos.

# ¿Cuál será la edad en años si los DAP estan dados en el siguiente cuadro?
datos_3<- c(12, 20, 26, 34, 45)
duraciones_predichas <- 10.74671-0.26013* datos_3
duraciones_predichas






