# Examen 1: inferencias sobre una población
#Alumno_Galilea_M_Osuna_A
# Contenido neto declarado de 80kg 
# Los costales contienen menos de los 80kg anunciados

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94,
            80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89,
            82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01,
            80.47, 76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29,
            75.52, 77.21, 75.99, 81.94, 80.41, 77.7)




#Preguntas
# Explique con sus propias palabras qué representan H0 y H1. 
#H0 me dice que no hay diferencia en lo que me pregunto, mientras que H1 me cuestiona si hay suficiente evidencia para rechazar H0.

# ¿Por qué corresponde utilizar una prueba de una cola?
# Poque la pregunta de investigación y la sospecha del consumidor se enfocan en una dirección especifíca:
# determinar si el contenido neto promedio de los costales es estrictamente menor a 80kg

# Calcule la media y desviación estándar de los 44 costales.

#mean(costal)
#Media= 78.91068
#sd(costal)
#Desviación estándar= 3.056023

# Identifique:

#estadístico t;
t.test(costal, mu=80, alternative = "less")
#t= -2.3644

# grados de libertad;
df= 43

# valor de p;
#p-value= 0.01132

# media observada
78.91068

#Compare el valor de p con α = 0,05.
# Comparación: p-value (0.01132) es < que 0.05

# ¿Se rechaza o no se rechaza H0?
# Se rechaza la hipótesis nula H0

#Redacte una conclusión en el contexto del problema, indicando si existe evidencia estadística suficiente
#para afirmar que los costales contienen, en promedio, menos de 80 kg.

# Existe evidencia estadística suficiente (con un nivel de significancia de Ó=0.05) para afirmar que los costales de alimento
# contienen, en promedio, menos de 80kg declarados.
