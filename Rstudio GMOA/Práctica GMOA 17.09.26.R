# Correlación
# Importar datos de altura y diámetro

erupciones <- data("faithful")
erupciones <- faithful

# crear un gráfico para revisar el comportamiento
# de las dos variables númericas 

plot(erupciones$waiting, erupciones$eruptions, 
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 19, col = "brown")

#conocer el rango del tiempo
range(erupciones$waiting)

#conocer el rango de la erupción
range(erupciones$eruptions)

boxplot(erupciones$eruptions,
        col = "violet")
fivenum(erupciones$eruptions)

cor.test(erupciones$eruptions, erupciones$waiting)

#Regresión lineal
#función lm

gylm <- lm(erupciones$eruptions ~ erupciones$waiting)
summary(gylm)

#Graficar la linea de tendencia central
#Función abline()

plot (erupciones$waiting, erupciones$eruptions,
     xlab ="Tiempo de espera (min)",
     ylab ="Duración de la erupción (min)",
     pch = 19, col = "red")
abline(gylm, lw = 2)

#ampliar mis datos originales con yprima y aplicación del modelo
erupciones$yprima <- gylm$fitted.values
erupciones$modelo <- -1.874016 + 0.075628*erupciones$eruptions
erupciones$residual <- gylm$residuals

# Determinar la suma de residuales = 0
sum(erupciones$residual)


datos <-c(62,75,81)
modelo <- lm(datos ~ 1)
summary(modelo)
