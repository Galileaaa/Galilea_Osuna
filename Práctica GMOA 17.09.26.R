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

# conocer el rango del tiempo
range(erupciones$waiting)

#conocer el rango de la erupción
range(erupciones$eruptions)

boxplot(erupciones$eruptions,
        col = "violet")
fivenum(erupciones$eruptions)

cor.test(erupciones$eruptions, erupciones$waiting)
