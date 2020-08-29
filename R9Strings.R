#Notebook para demonstração de Strings

texto <- "Isso é uma string"
texto

x = as.character(3.14) #convertendo para string
x
class(x)

#Concatenação de Strings
nome = "Stella"; sobrenome = "Costa"
paste(nome, sobrenome)  #ou
cat(nome, sobrenome) 

#Formantando a saída
sprintf("%s Estudante da UFRJ e torcedora do %s", "Stella Costa", "Cruzeiro Esporte Clube")

#Slicing
texto <- "Isso é uma String"
substr(texto, start = 12, stop = 17)
?substr  #receve uma string onde em start = inicia a coleta e em stop = para

#Contando caracteres de uma string
nchar(texto)

#Convertendo Str em minusculas e maiusculas
tolower(texto)
toupper(texto)


#Dividindo uma string
library(stringr) #stringr
strsplit(texto, NULL) #NULL divisão sem critérios

strsplit(texto, " ") #critéro definido como caracter espaço

#Trabalhando com Strings
str1 <- c('Esse texto será dividido em duas partes. Essa é a primeira', 'Aqui inicia a segunda parte.')
str1

str2 <- c("Vamos testar novamente, ok?", "Que bom que você tentou.")
str2

#Contar quantas vezes um caracter aparece na string
str_count(str2, "o")

#Localizar a primeira e ultima vez que um caracter aparece na string
str_locate_all(str2, "o")

#Substituir a primeira ocorrencia de um caracter
str_replace(str2, "\\o", "")

#Substituir todas as ocorrencias de um caracter
str_replace_all(str2, "\\o", "")

#Detectando padrões em um str
str1 <- "23 mai 2000"
str2 <- "1 mai 2000"
padrao <- "mai 20"
grepl(pattern = padrao, x = str1) #grepl para se buscar um padrao
padrao <- "mai20"
grepl(pattern = padrao, x = str1)

#Importando arquivo txt
arquivo <- read.csv("caminho do arquivo local ou url")
head(arquivo) #ver as primeiras linhas
tail(arquivo) #ver as ultimas

str_count(arquivo, "7") #contar qntas veze 7 aparece
str_locate_all(arquivo, "7") #posições exatas


#Criando funções para manipulação de str
strtail <- function(s,n=1) {
  if(n<0) 
    substring(s,1-n) 
  else 
    substring(s,nchar(s)-n+1) }

strtail("String de teste", 6)



