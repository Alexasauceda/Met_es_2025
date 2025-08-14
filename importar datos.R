temperatura <- read.csv("C:/Users/Usuario.PC15/Downloads/temperatura.csv")
View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de filas y columnas
names(temperatura) #nombres de columas 
str(temperatura) #estructura del objeto

#Resumen estadistico
summary(temperatura)

#modificar nombre de columas 
names(temperatura) <-c("anio","ene","feb","mar","abr","may","jun","jul","ago","sep","oct","nov","dic")


names(temperatura)
#crear colima media_anual con temperatura media anual
temperatura$ene
temperatura$media_anual <-rowMeans(temperatura[,2:13])
head(temperatura)


#crear objeto con medias mensuales de temperatura 
medias_mensuales <- colMeans(temperatura[,2:13])
medias_mensuales
help("boxplot")

boxplot(temperatura$ene,main="temperatura de enero",
        ylab="c",col="lightblue")

datos_meses <-temperatura[,2:13]
boxplot (datos_meses,
         ylab="c",
         col="lightgreen",
         names= c("ene","feb","mar","abr","may","jun","jul","ago","sep","oct","nov","dic"))