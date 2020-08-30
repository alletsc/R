#Notebook para demonstração de Dataframes
df <- data.frame()
class (df)

#Criação de vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

#Criando um data frame

pais <-  c("EUA", "England", "Holanda", "Espanha", "Brasil")
nome <- c("Jhon", "Edward", "Alice", "Koska", "Josi")
altura <-  c(1.78, 1.83, 1.68, 1.8, 1.63)
codigo <-  c(1001, 2002, 3003, 4004, 0101)


pesquisa <-  data.frame(pais, nome, altura, codigo)
pesquisa
View(pesquisa)


#Adicionando Vetores a um Dataframe
olhos <- c("verde", "azul", "azul", "castanho", "castanho")
pesq <-  cbind(pesquisa, olhos)
pesq


#Obtendo informaçoes de um dataframe
str(pesq)
dim(pesq)
length(pesq)

#Slicing
pesq$pais
pesq$nome

pesq[1,1]
pesq[3,2]

nrow(pesq)
ncol(pesq)

#Elementos de um dataframe
head(pesq)
head(mtcars)

tail(pesq)
tail(mtcars)

?mtcars
mtcars

#Filtrando elementos - subsets
pesq[altura < 1.80,]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq

#Dataframes Nomeados
names(pesq) <- c("Pais", "Nome", "Altura", "Codigo", " Cor dos Olhos")
pesq

colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq


#Importação arquivos
# read.xls()
# read.mtp()
# read.spss()
# read.table()
# read.csv()
# read.delim()

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)


#Combinando dataframes
df3 <- merge()
df3
