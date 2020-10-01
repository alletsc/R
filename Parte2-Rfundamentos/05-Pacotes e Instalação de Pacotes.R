# Pacotes e Instalacao de Pacotes
#Pacotes sao basicamente conjunto de funcoes
search()

install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
library(tm)
require(dplyr)

search()
?require #carrega pacotes dentro de funcoes
detach(package:dplyr) #desanexa pacote da area de trabalho
?attach

ls(pos = "package:tm") #ver lista de funcoes do pacote
ls(getNamespace("tm"), all.names=TRUE) 

lsf.str("package:tm") 
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")


## R possui um conjunto de datasets preinstalados. Verificar datasets package

library(MASS)
data()

?lynx
head(lynx)
head(iris)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)

attach(iris) #anexar dataset p acessar elementos de forma mais rapida
sum(Sepal.Length)
