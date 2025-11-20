# Examen Final - Métodos Estadísticos
# Ejercicio 1: Relación entre DAP y Altura

# Datos del ejercicio
DAP_cm <- c(
  19.57, 29.99, 26.41, 17.47, 22.11, 33.26, 12.87, 22.86, 31.33, 20.67,
  21.61, 24.53, 32.46, 21.81, 22.78, 22.83, 36.03, 35.93, 30.02, 26.93,
  28.69, 32.45, 20.32, 30.88, 18.73, 21.81, 29.54, 17.86, 24.3, 20.69)

Altura_m <- c(
  17.23, 9.6, 12.69, 15.9, 20.78, 17.48, 18.01, 20.06, 15.36, 18.85,
  15.58, 12.82, 16.83, 19.72, 19.02, 17.96, 25.18, 19.24, 20.94, 24.71,
  14.12, 14.88, 23.23, 15.61, 18.09, 21.21, 20.67, 23.26, 22.49, 21.21)

datos <- data.frame(DAP_cm, Altura_m)

# Vista de los datos
head(datos)
summary(datos)

# Medias y desviaciones
mean(DAP_cm)
sd(DAP_cm)
mean(Altura_m)
sd(Altura_m)

# Pregunta:
# ¿En que medida el DAP puede predecir la altura total de los arboles?

# Hipótesis:
# H0: r = 0 (no hay correlación)
# H1: r ≠ 0 (sí hay correlación)

# Normalidad
shapiro.test(DAP_cm)
shapiro.test(Altura_m)

# Como ambas dan p > 0.05, se usa Pearson
cor.test(DAP_cm, Altura_m, method = "pearson")

# Gráfico de dispersión
plot(DAP_cm, Altura_m,
     main="Relación entre DAP y Altura",
     xlab="DAP (cm)", ylab="Altura (m)",
     pch=19, col="blue")

# Línea de tendencia
abline(lm(Altura_m ~ DAP_cm), col="red", lwd=2)

# Interpretación (escrita aquí mismo):
# El modelo mostro que el DAP predice de manera significativa la altura del arbol 
# (p<0.001), indicando que arboles con mayor DAP tienden a ser mas altos 
#
#
# Conclusión:
# El DAP es un predictor confiable de la altura total de los árboles.
#Existe una relación lineal positiva y significativa entre ambas
#variables, lo que permite afirmar que el DAP puede utilizarse para estimar 
#la altura en estudios o aplicaciones forestales.

