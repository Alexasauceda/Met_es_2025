#Laboratorio 6
data("faithful")  

plot(faithful$waiting,faithful$eruptions,
     xlab = "tiempo de espera (min)",
     ylab = "Erupcion (min)",
     col = "red",
     pch = 20)    
# correlacion positiva 

#correlacionar las dos variables 

shapiro.test(faithful$eruptions)
shapiro.test(faithful$waiting)


#======================================================
#pearson solo se utilizan cuando tenemos dtaos normales 
#======================================================

cor.test(faithful$waiting, faithful$eruptions,
         method = "pearson")

#================================================================
#spearman se utiliza como contraparte para datos no normales 
#================================================================
cor.test(faithful$waiting, faithful$eruptions,
         method = "spearman")




