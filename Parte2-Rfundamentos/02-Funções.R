#Script para demosntracao do estudo de funcoes

?sample
args(sample) #visualiar paramentros da funcao
args(mean)
args(sd)

#Built-in
abs(-43) #valor absoluto
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8)) #arrendondar valores 
rev(c(1:5)) #reverte o valor do conjunto 
seq(1:5)
sort(rev(c(1:5))) #ordena um conjunto
append(c(1:5), 6) #adiciona elementos ao vetor

vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)
vec2

#funcoes dentro de funcoes
plot(rnorm(10)) 
mean(c(abs(vec1), abs(vec2))) #calcular a media de uma lista de valores absolutos de vetores


#criacao de funcoes
myfunc <- function(x) { x + x }
myfunc(10)
class(myfunc)

myfunc2 <- function(a, b) {
  valor = a ^ b
  print(valor)
}
myfunc2(3, 2)

jogando_dados <- function() {
  num <- sample(1:6, size = 1) #Local
  num
}

jogando_dados()

# num dentro dessa funcao tem um escopo local

# Escopo
print(num)
num <- c(1:6)
num #Global


#definincao de argumentos 
vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")
vec3 <- c(6.5, 9.2, 11.9, 5.1)


myfunc3 <- function(...){   #notacao ... : nao sei quantos parametro irei passar
  df = data.frame(cbind(...)) #cria um df a partir do paramentro q eu passar
  print(df)
}

myfunc3(vec1)

myfunc3(vec2, vec3)

myfunc3(vec1, vec2, vec3)




