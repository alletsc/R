# Funcoes especiais

#unlist() #cria um vetor com os elementos da lista
?unlist

lst1 <- list(6, "b", 15)
lst1
class(lst1)

unlist(lst1) #desconstruindo a lista
vec1 <- unlist(lst1)
class(vec1)
vec1

lst2 <- list(v1 = 6, v2 = list(381,2190), v3 = c(30, 217)) #list e vet aninhados
lst2
unlist(lst2)

mean(unlist(lst2)) #usando o unlist dentro de outra funcao
round(mean(unlist(lst2)))

#do.call = executa uma funcao em um objeto
# ****IMPORTANTE*****
# Funcoes apply aplicam uma funcao a cada elemento de um objeto
# Funcoes do.call aplica uma funcao ao objeto inteiro e nao a cada elemento

data <- list() #criando lista vazia
N <- 100

for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}

head(data)

do.call(rbind, data) 
#convertendo novamente a lista em df
#bind une baseados em um parametro pode ser r ou c
class(do.call(rbind, data))

# lapply() x do.call()
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum) #substitui o loop, aplica a funcao para cada elemento,
do.call(sum, y) #apliquei sum a todo o objeto


# O resultado da funcao lapply() pode ser obtido de outras formas
# Pacote plyr

install.packages('dplyr')
library(plyr)

y <- list(1:3, 4:6, 7:9)
y

ldply(y, sum)


# Benchmark para comparar o tempo de duas funcoes
install.packages('rbenchmark')
library(rbenchmark)
benchmark(do.call(sum, y), ldply(y, sum))

N <- list(as.numeric(1:30000), as.numeric(4:60000), as.numeric(7:90000))

benchmark(do.call(sum, N), ldply(N, sum))


# strsplit() <- Divide uma string ou vetor de caracteres

texto <- "Esta é uma string."
strsplit(texto, " ") #dividindo a cada espaco

texto <- "Esta é uma string."
strsplit(texto, "") #dividindo a cada caracter


dates <- c("1999-05-23", "2001-12-30", "2004-12-17")
temp  <- strsplit(dates, "-") #a cada - (dash)
temp
class(temp)

matrix(unlist(temp), ncol = 3, byrow = TRUE) #criando uma matriz atraves do unlist

Names <- c("Brin, Sergey", "Page, Larry",
           "Dorsey, Jack", "Glass, Noah",
            "Williams, Evan", "Stone, Biz")
Names

Cofounded <- rep(c("Google", "Twitter"), c(2,4))
temp <- strsplit(Names, ", ")
temp


frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
frase
palavras <- strsplit(frase, " ")[[1]]
palavras

#Tirando palavras repetidas
unique(tolower(palavras)) #coletando palavras de forma unica e convertendo tudo em minusculas


antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
strsplit(as.character(antes$tipo),'_e_') #separando apenas na coluna tipo


library(stringr)
str_split_fixed(antes$tipo, "_e_", 2) #retorna um objeto do tipo matriz


antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua_2'))
antes
depois <- strsplit(as.character(antes$tipo),'_e_')
do.call(rbind, depois) #convertendo em matriz por do.call

install.packages("dplyr")
library(dplyr)
install.packages("tidyr")
library(tidyr)

antes <- data.frame(
  attr = c(1, 30 ,4 ,6 ), 
  tipo = c('pao_e_agua','pao_e_agua_2')
)

antes %>%
  separate(tipo, c("pao", "agua"), "_e_")


#Criacao de objetos

vetor1 = 1:4
vetor2 = c(1:4)
vetor3 = c(1,2,3,4)

vetor1
vetor2
vetor3

class(vetor1)
class(vetor2)
class(vetor3)
typeof(vetor1)
typeof(vetor2)
typeof(vetor3)

matriz1 = matrix(1:4, nr = 2)
matriz2 = matrix(c(1:4), nr = 2)
matriz3 = matrix(c(1, 2, 3, 4), nr = 2)

class(matriz1)
class(matriz2)
class(matriz3)
typeof(matriz1)
typeof(matriz2)
typeof(matriz3)





