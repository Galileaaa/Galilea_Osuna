
# 19/08/26
#importar datos ----
#Usar la función "read.csv" para importar datos de excel

Observ <- read.csv("Vivero.csv", header= TRUE)
Observ$Tratamiento <- as.factor(Observ$Tratamiento)
#Declarar la columna tratamiento como factor y sus 2 niveles
#utilice la función "as.factor".


#Gráfica----

#Boxplot de los datos

boxplot(Observ$IE ~ Observ$Tratamiento, 
        xlab ="Factor = Fertilizante",
        ylab = "Indice (IE)",
        col = "lightblue",
        main = "unidad experimental")

        

