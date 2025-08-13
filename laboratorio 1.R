 # gastos mensuales 
300+240+1527+400+1500+1833
celular <- 300
transporte <-240
combustible <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
total <- celular+transporte+combustible+gimnasio+alquiler+otros
semestre <- total*5
anual <- total*10
#valores absolutos 
abs(10)
abs(-4)

#Raíz cuadrada
sqrt(9)

#logaritmo natural 
log(2) 
2*9
4+5 # tambien se puede colocar un comentario 

celular<- 300
Celular<--300 
CELULAR<- 8000
 
celular+Celular+CELULAR
help(abs)
help(mean) 
?abs 
?maen 
help.search("absolute")

gastos <- c(celular, transporte, combustible, gimnasio, alquiler, otros)

barplot(gastos)
?sort
gastos_ord <- sort(gastos, decreasing = TRUE)
help("barplot")
barplot(gastos_ord, main = "gastos mensuales")
names.arg = c("otros", "alquiler" , "gimnasio", "combustible", "transporte", "celular")

