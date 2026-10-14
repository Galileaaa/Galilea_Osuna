# ==============================================================
# Evaluación III - Principios de estadística
# Anillos de crecimiento y temperatura
#
# Nombre: Galilea Marlenn Osuna Alejandro
# Matrícula: 2093622
# ==============================================================


# ==============================================================
# EJERCICIO 1
# ==============================================================

# --- a) Ingresar los datos en el objeto "anillos" ---------------
#        Variables: Temperatura (AFres, ACal) y Ancho (mm)

AFres <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal <- c(2.51, 1.90, 3.20, 2.55, 1.92, 2.84, 3.41, 2.12, 2.70, 2.66)

# --- b) Hipótesis de partida ------------------------------------
# H0: No existe diferencia significativa en el ancho de los anillos entre ambos años
# H1: Si existe diferencia significativa entre el ancho de los anillos entre ambos años


# --- c) Media de AFres y ACal -----------------------------------
mean(AFres)
mean(ACal)

# --- d) Desviación estándar de AFres y ACal ---------------------
sd(AFres)
sd(ACal)

# --- e) Diferencia media entre ambos años -----------------------
mean(AFres-ACal)


# --- f) Valor de t ----------------------------------------------
t.test(AFres, ACal, paired = TRUE, conf.level = 0.95)


# --- g) ¿Diferencias significativas? / Parámetro / Valor --------
#No existen diferencias significativas pues el valor de p es mayor a 0.5, por lo tanto, no se rechaza la hipotesís nula.


# --- h) Conclusión sobre la decisión del responsable ------------
# Respuesta:
#No se rechaza la hipotesís nula, pues el ancho de los anillos no cambia para años frios o cálidos, por lo tanto las temperaturas 
#altas no afectan el crecimiento radial para pinus pseudostrobus.


# ==============================================================
# EJERCICIO 2
# ==============================================================

# --- Ingresar los datos -----------------------------------------
AFres <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal <- c(2.10, 1.82, 2.64, 2.48, 1.70, 2.41, 2.95, 2.15, 2.30, 2.35)


# --- Hipótesis --------------------------------------------------
# H0: No existe diferencia significativa en el ancho de los anillos entre ambos años
# H1: Si existe diferencia significativa entre el ancho de los anillos entre ambos años


# --- a) Media de AFres y ACal -----------------------------------
mean(AFres)
mean(ACal)


# --- b) Desviación estándar de AFres y ACal ---------------------
sd(AFres)
sd(ACal)

# --- c) Diferencia media entre ambos años -----------------------
mean(AFres-ACal)


# --- d) Valor de t ----------------------------------------------
t.test(AFres, ACal, paired = TRUE, conf.level = 0.95 )


# --- e) ¿Diferencias significativas? / Parámetro / Valor --------
#Si, el valor de p es menor que 0.5 (0.0) se rechaza la hipotesís nula, puesto que si existen diferencias significativas para el ancho de los anillos comparando 
#los años frescos y los años cálidos.


# --- f) Decisión de la Comisión Forestal ------------------------
# Respuesta:
#En el primer citio no, puesto que realmente no hay influencia significativa entre el ancho de los anillos y la temperatura,
#en el segundo sitio si, pues el valor t aumenta de manera significativa (pasa de 0.1952 a 5.8804) lo que podrí indicarnos que si existe
#influencia de la temperatura en el ancho de los anillos y su crecimiento, en sitios secos y con menor altitud.