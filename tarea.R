#Cuadraste de medias
#03/09/2025

data(iris)
head(iris)
summary(iris)
data_sub <- subset(iris,Species %in% c("versicolor","virginica"))
table(data_sub$Species)
head(data_sub)

tapply(data_sub$Petal.Length,data_sub$Species,mean)
tapply(data_sub$Petal.Length,data_sub$Species,sd)
aggregate(Petal.Length ~ Species,data = data_sub,summary)
var.test(Petal.Length ~ Species,data = data_sub)
t.test(Petal.Length ~ Species,data = data_sub, var.equal=TRUE)
t.test(Petal.Length ~ Species,data = data_sub, var.equal=FALSE)
library(effsize)
cohen.d(Petal.Length ~ Species,data=data_sub)

df_vers <-subset(data_sub, Species =="versicolor")
df_virg <-subset(data_sub, Species !="virginica")
cohens_efecto <- function(x, y) {
  n1 <- length(x); n2 <- length(y)
  s1 <-sd(x); s2 <- sd(y)
  sp <- sqrt(((n1 - 1) *s1^2 + (n2 - 1)* s2^2)/(n1 + n2 - 2))
  (mean(x)- mean(y)) / sp
  }
d_cal <- cohens_efecto(df_vers$Petal.Length, df_virg$Petal.Length)
d_cal
boxplot(Petal.Length ~ Species,data=data_sub,
        main="Comparacion de largo de petalo",
        XLAB="Especie",
        ylab="Peter.Length(cm)",
        col=c("lightblue","lightgreen"))

