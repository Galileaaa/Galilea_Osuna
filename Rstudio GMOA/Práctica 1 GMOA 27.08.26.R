#Gastos totales
300+240+1527+400+1500+1833

celular <- 300
transporte <- 240 
comestibles <- 1527 
gimnasio <- 400
alquiler <- 1500
otros <- 1833
total <- 5800

#gastos durante un semestre escolar
total*5
29000

#gastos durante un año escolar
total*10
58000

#Detectar máyusculas y minúsculas 
celular <- 300
Celular <- - 300
CELULAR <- 8000
celular + Celular
CELULAR - celular

#Autoevaluación 
gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
nombres = c("celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros")
barplot(gastos,
        names.arg = (nombres),
        col = "pink")
b <- barplot(sort(gastos, decreasing = TRUE), col = "pink",
        main = "Gastos mensuales",
        xlab = "Categorías de gasto",
        ylab = "Monto ($)",
        ylim = c (0, 2000),
        names.arg =c("otros", "comestibles", "alquiler", "gimnasio", "celular", "transporte"))   
text(x = b, y = sort(gastos, decreasing = TRUE) + 70, labels = sort(gastos, decreasing = TRUE))

#parte II - tipo de variable (cuantitativa, cualitativa)

#Nombre de estudiante
##cualitativo
#Fecha de nacimiento 
##cualitativo
#Edad
##cuantitativo
#Dirección de casa
##cualitativo
#Grado de año universitario
##cualitativo
#Calificación general 
##cualitativo
#Tiempo en minutos
##cuantitativo
#Número de hermanos
##cuantitativo