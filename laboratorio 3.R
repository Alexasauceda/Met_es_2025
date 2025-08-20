#LABORATORIO 3
#20/08/2025
#Alexa Marisol Moreno Sauceda 


# importar datos --------------------------------------------------------

Tem <- read.csv("temperatura.csv", header =T)
Tem <- read.csv("data/temperatura.csv", header =T)

#ingresar datos de manera manual

edad <- c(18,19,18,18,25,19,18,18,18,17,19,19,18,17,19,18,19,19)

alumnos <-seq(1,18,1)

info <- data.frame(alumnos, edad)

info$Altura <-c(174,174,170,160,158,155,188,
                170,175,170,172,170,174,180,
                158,161,188,164)

# Graficar  datos -------------------------------------------------------

boxplot(info$Altura,
        #col sirve para colorear la grafica
        col ="indianred", 
        # main sirve para poner titulo
        main ="clase 3 semestre")
colores = c("navajowhite", "indianred" ,"skyblue" )
boxplot(datos_meses,
        col=colores)


# estadisticas descriptivas ---------------------------------------------




# estadistica inferencial -----------------------------------------------


