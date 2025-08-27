#pruebas de t
#caso de muestras independientes 
#MAFT
#27/08/2025

#importar datos de indice de cantidad 

calidad <-read.csv("Data/calidad_plantas.csv", header = T)


calidad$Tratamiento <-as.factor(calidad$Tratamiento)

colores <-c("navajowhite", "skyblue")
boxplot(calidad$IE ~ calidad$Tratamiento,
        col= "skyblue",
        xlab="tratamientos",
        ylab="indice calidad",
        ylim= c(0.4,1.2),
        main= "viveros iturbide")

#Estadistica descriptiva 
#tapply sirve para obtener un valor cuando contamos 
#con varios grupos 

tapply(calidad$IE, calidad$Tratamiento, mean)
tapply(calidad$IE, calidad$Tratamiento, var)

#observamos que la varianza del grupo fert es tres veces 
#mas grande que el grupo control (ctrl)

#revisar el comportamiento de los datos 
library("ggplot2")

ggplot(calidad, aes(x = IE, color = Tratamiento))+
  geom_density()




