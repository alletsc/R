#Notebook para demonstração de Vetores

#Vetores Str
strvec = c('R', 'Python')
strvec

#Float 
floatvec = c(3.14, 0.01, 2020.1)
float

#Logic
veclogic = c(T, F, T, F, F)

#Complex 
complvector = c(5.2+3i, 3.8+4i)
complvector

#Integer
integervec = c(2, 4, 6)
integervec

#Seq
vec1 = seq(1:10)
vec1
is.vector(vec1)

#Using rep
vec2 = rep(1:5)
vec2

#Vector indexing
s <- c(5,4,3,2,1)
s
s[1]
sc[8]

sc <- c('UFRJ', 'GPDES')
sc

#combining vectors
v1 = c(3,2,1)
v22 = c('aa', 'bb', 'cc', 'dd','ee')
c(v1,v2)

#Vector operations
x = c(5,4,3,2,1)
y = c(10,9,8,7,6)
x * y
x + y
x ** y
x / y
x * 5
y + 1

UFRJ <- c(10, 20, 30)
GPDES <- c(1,2,3,4,5,6,7,8,9)
UFRJ + GPDES

#Named Vector
jogos = c('PUBG', 'DOTA2')
jogos

names(jogos) = c('BR', 'MOBA')
jogos
jogos['BR']

