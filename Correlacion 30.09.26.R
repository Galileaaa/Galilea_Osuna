#correlacion continuacion 
#ingresar partes de datos

x1 <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
y1 <- c(8.04,6.95,7.58,8.81,8.33,9.96,7.24,4.26,10.84,4.82,5.68)
mean(x1)
mean(y1)
cor.test(x1,y1)
x2 <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
y2 <- c(9.14,8.14,8.74,8.77,9.26,8.10,6.13,3.10,9.13,7.26,4.74)
mean(x2)
mean(y2)
cor.test(x2,y2)
x3 <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
y3 <- c(7.46,6.77,12.74,7.11,7.81,8.84,6.08,5.39,8.15,6.42,5.73)
mean(x3)
mean(y3)
cor.test(x3,y3)
x4 <- c(8.0,8.0,8.0,8.0,8.0,8.0,8.0,19.0,8.0,8.0,8.0)
y4 <- c(6.58,5.76,7.71,8.84,8.47,7.04,5.25,12.50,5.56,7.91,6.89)
mean(x4)
mean(y4)
cor.test(x4,y4)

# Gráfica de los datos

par(mfrow = c(2,2)) # configurar gráfica 2x2
plot(x1,y1,col = "red",
     main = "conjunto 1",pch = 19)

plot(x2,y2,col = "green",
     main = "conjunto 2",pch = 19)

plot(x3,y3, col = "blue",
     main = "conjunto 3",pch = 19)

plot(x4,y4, col = "gray",
     main = "conjunro 4", pch = 19)
par(mfrow = c(1,1)) # volver a la normalidad 
