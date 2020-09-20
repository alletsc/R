#Notebook para demonstraca de pacotes

#Tudo que pode ser automatizado deve ser automatizado
search() #listA pacotes ja carregados

install.packages(c("ggvis", "tm", "dplyr","ggplot2"))
library(ggvis)
library(tm)
require(dplyr)

search()
?require  #carrega pacote dentro de uma funcao

detach(package:dplyr) #remover pacote da area de trabalho
?attach #anexar data set a ambiente de trabalho

ls(pos = "package:tm") #listar funcoes dentro de um pacote
ls(getNamespace("tm"), all.names=TRUE) #visualizar funcoes dentro de funcoes 

lsf.str("package:tm")
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")


#Dataset pre carregados
library(MASS)
data() #descricao dos data sets

?lynx
head(lynx)
head(iris)
tail(lynx)
summary(lynx) #dar informacoes como max min media media e quatis de um data set

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length #imprimir apenas uma coluna

attach(iris) #Anexa a area de trbalho para se usar diretamente a funcao sum
sum(Sepal.Length)
