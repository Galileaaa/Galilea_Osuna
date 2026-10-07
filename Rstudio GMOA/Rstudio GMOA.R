#Examen
#Datos sin valor extremo
x1 <- c(1.2,1.5,1.7,1.8)
#Resumen general
summary(x1)
#Media
mean(x1)
#Mediana
median(x1)
#Varianza
var(x1)
#Desviación estándar
sd(x1)


#Datos con valor extremo
x2 <- c(1.2,1.5,1.7,1.8,4.8)
#Resumen general
summary(x2)
#Media
mean(x2)
#Mediana
median(x2)
#Varianza
var(x2)
#Desviación estándar
sd(x2)

#¿qué medida de tendencia central será menos afectada por el valor 4.8?
#La mediana, pues sin el valor extremo es =1.6 y con valor extremo 1.7, es el dato con menor diferencia y mayor parentesco.

#Ejercicio 2
anillos <- data.frame(
  Árbol = 1:40,
  RW = c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48)
)
#Resumen general
summary(anillos)
#Media
mean(anillos)
#Desviación estándar
sd(anillos$RW)
#Varianza
var(anillos$RW)
#Coeficiente de variación
cv <- (sd(anillos$RW)/
       mean(anillos$RW))*100

boxplot(anillos$RW,
        horizontal=TRUE,
        Xlab="anillos$Árbol",
        ylab="anillos$RW")


