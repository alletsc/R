#Notebook criado para demonstracao de Listas

#List str
liststr = list('Bem-vindo', 'ao estudo', 'de R')
liststr


#Lista de inteiros
listint = list(2, 3, 4)
listint


#Lista de floats
floatlist = list(1.90, 45.3, 300.5)
floatlist

#Lista com numeros complexos
compllist = list(5.2+3i, 2.4+8i)
compllist


#List com valores Logicos
logiclist = list(T, F, F)
logiclist


#Listas Compostas
compostlist = list("A", 3, TRUE)
compostlist

lista1 <- list(1:10, c("Maria", "Selvino", "Sther"), rnorm(10))
lista1

?rnorm #funcao de distribuicao normal


#Fatiando Listas - Slicing
lista1[1]
lista1[c(1,2)]
lista1[2]
lista1[[2]][1]  
lista1[[2]][1] = "Monica" #Substituindo elementos em uma lista
lista1

#Listas Nomeadas
names(lista1) <- c("int", "str", "num")
lista1

vectnum <- 1:4
vectnum
vectstr <- c("A", "B", "C", "D")
vectstr

#Nomeando listas
lista2 <- list(Numeros = vectnum, Letras = vectstr)
lista2


#Nomeando Elementos
lista2 <- list(elemento1=3:5, elemento2=c(7.2,3.5))
lista2


#Especificando elementos
names(lista1) <- c("inteiros", "strings", "numericos")
lista1

lista1$strings           #$ para incluir nome na lista
length(lista1$inteiros) 
lista1$inteiros


#Verificar o tamanho da lista
length(lista1)


# Podemos extrair um elemento 
lista1$strings[2]


# Mode dos elementos
mode(lista1$numericos)
mode(lista1$strings)


#Combinando 2 listas
lista3 <- c(lista1, lista2)
lista3


#Transformacao de vetores em lista
v = c(1:3)
v
l = as.list(v)
l


#Unindo elementos em uma lista
mat = matrix(1:4, nrow = 2)
mat
vec = c(1:9)
vec
lst = list(mat, vec)
lst
