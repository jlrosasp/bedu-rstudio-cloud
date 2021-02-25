#DESARROLLO

#Se cree que entre las variables x y y del archivo csv adjunto, podría haber una relación más o menos lineal. 
#Para tener más evidencia sobre esto lleve a cabo lo siguiente:
datos <- read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-con-R-Santander/master/Sesion-05/Reto-01/datoslineal.csv")
attach(datos)
View(datos)

#Realice el gráfico de dispersión de los datos
plot(x, y, main = "Regresión Lineal")

#Ajuste un modelo de regresión lineal simple a los datos, muestre un resumen del modelo ajustado y 
#trace la recta de regresión estimada junto con el gráfico de dispersión
str(datos)
summary(datos)
m1 <- lm(y~x)
summary(m1)
plot(y, x, xlab = "X Tamaño de ejecución", 
     ylab = "Y Tiempo de ejecución", pch = 16)
abline(lsfit(y, x)) 
#Obtenga algunas gráficas de diagnóstico y diga si es razonable suponer para los errores aleatoriedad, 
#normalidad y varianza constante.
anova(m1)
par(mfrow = c(2, 2))
plot(m1)
dev.off()
