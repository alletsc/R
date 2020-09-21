#Script demonstracao familia apply 

#Percorre um objeto e aplica funcoes a cada um dos elementos 

#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versao amigavel da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

#Regras Basicas para trabalhar com os objetos: 
# list, numeric, character (list/vector) => sapply ou lapply
# matrix, data.frame (agregacao por coluna) => by / tapply
#operacoe spor linhas ou operacoes especificas => apply


lista1 <- list(a = (1:10), b = (45:77))

# Calculando o total de cada elemento da lista com loop for
valor_a = 0
valor_b = 0

for (i in lista1$a){
    valor_a = valor_a + i
    
}

for (j in lista1$b){
  valor_b = valor_b + j
}

print(valor_a)
print(valor_b)

#Calculando cada elemento da lista com sapply
?sapply
sapply(lista1, sum) #sapply (objeto,funcao)

# Funcoes com sapply
media <- sapply(lista1, mean)
round(media) #

# apply()- funcoes por linhas ou colunas
?apply

x <- matrix(rnorm(9), nr = 3, byrow = T)
x
apply(x, 1, mean) #media de cada linha # 1 para linhas 2 para colunas
apply(x, 2, mean) #media de cada coluna
apply(x, 1, plot) #plotando a linha 

resultapply <- apply(x, 1, mean) #gravando em um objeto
resultapply


escola <- data.frame(Aluno = c('Alan','Alice','Alana', 'Aline','Alex','Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia

# Calculando a media por aluno
escola$Media = NA #criando a coluna media
escola

escola$Media = apply(escola[, c(2, 3, 4)], 1, mean) #fazendo o slicing
escola
escola$Media = round(escola$Media) #saida arredondada
escola


# tapply() vs sqldf
    #sql 
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan','Alice','Alana', 'Alan','Alice','Alana'),
                     Semestre = c(1, 1, 1, 2, 2, 2),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

escola2

sqldf("select aluno, sum(Matematica), sum(Geografia), 
      sum(Quimica) from escola2 group by aluno")
'tapply(c(escola2$Matematica), escola2$Aluno, sum)
 







