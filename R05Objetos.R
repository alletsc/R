#Notebook para demonstração de Objetos

#Vetores
vetor1 <- c(1:10)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)

#Matrizes
matriz1 <- matrix(1:10, nrow =2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

#Array
array1 <- array(1:5, dim=c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

#Dataframe
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

#List
lista1 <- list(a=matriz1, b=vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)

#Funções
func1 <- function(x) {
  var1 <- x * x
  return(var1)
}

func1(5)
class(func1)


# Removendo objetos
objects()
rm(array1, func1)
objects()

