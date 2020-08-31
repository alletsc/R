#Fatores
vec1 <- c("Macho","Femea","Femea","Macho","Macho")
vec1
facvec1 <- factor(vec1) #Convertendo vetor do tipor caracter para fator
facvec1
class(vec1)
class(facvec1)

#Variaveis nominais
animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
facanimais <- factor(animais)
facanimais
class(facanimais)
levels(facanimais)

#Variaveis ordinais 
grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
facgrad <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", "Bacharelado")) #ordenar e deifinir os niveis
facgrad
levels(facgrad)

#Sumarizando dados
summary(facgrad)
summary(grad)

vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vec2
facvec2 <- factor(vec2)
facvec2
levels(facvec2) <- c("Femea", "Macho") #Definir Titulo para os niveis, nomeando os niveis
facvec2
summary(facvec2) #sumarizar a quantidade em cada categoria
summary(vec2) 

data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata
rdata = factor(data,labels=c("I","II","III"))
rdata

#Fatores não ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1
f.set1 <- factor(set1)
class(f.set1)
is.ordered(f.set1) #Verificar ordenação

o.set1 <- factor(set1, 
                 levels = c("CA", "BA", "AA", "CC", "B"), 
                 ordered = TRUE) #criando a ordenação

o.set1
is.ordered(o.set1)

as.numeric(o.set1) #convertendo para numerico
table(o.set1)

#Fatores em Dataframes
getwd()
setwd("C://Users//stell//OneDrive//Área de Trabalho Meu Desktop")
df <- read.csv2("etnias.csv", sep = ',')
df
str(df)
