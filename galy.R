
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

# conocer la varianza de cada grupo 

df_ctrl <- subset(Observ, Tratamiento == "Ctrl")
df_fert <- subset(Observ, Tratamiento !="Ctrl")
df_fert <- subset(Observ, Tratamiento == "Fert")

mean(df_ctrl$IE)
mean(df_fert$IE)

# La varianza del grupo fertilizado es 3 veces mayor que la 
# varianza del grupo control 
# Pregunta

# ¿Serán las varianzas iguales o diferentes estadísticamente?
var.test(df_ctrl$IE,df_fert$IE)
# Las varianzas de ambos grupos son iguales

# ¿Provienen de una distribución normal ambos grupos?
shapiro.test(df_ctrl$IE)
#Grupo ctrl proviene de una distribución normal
shapiro.test(df_fert$IE)
#Grupo fert sigue una distribución normal


# Existen deferencias entre los tratamientos

t.test(df_ctrl$IE, df_fert$IE, var.equal = TRUE)

# Si la pregunta es que el fert es mayor que ctrl
t.test(df_fert$IE, df_ctrl$IE, var.equal = T, alternative = "greater")

# si la pregunta es que Ctrl es menor que Fert
t.test(df_fert$IE, df_ctrl$IE, var.equal = T,alternative = "less")
