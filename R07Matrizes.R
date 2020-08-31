#Notebook criado para demonstração de Matrizes

matrix (c(1,2,3,4,5,6), nr = 2) #nr = number rows
matrix (c(0,9,8,7,6,5), nr = 3)
matrix (c(5,4,3,2,1,0), nr = 6)

#nc = number columns
matrix (c(10,11,12,13,14,15), nc = 2)
matrix (c(15,16,17,18,19,20), nc = 3)
matrix (c(20,21,22,23,24,25), nc = 6)

help("matrix")

# !Matrizes sempre terão um número de elementos sejam multiplos ou submultiplos do numero de linhas
matrix (c(1,2,3,4,5), nr = 2)
matrix (c(1,2,3,4,5), nc = 3)
matrix (c(1,2,3,4,5,6), nr = 2)

#Criando Matrizes a partir de vetores
meusdados = c(1:10)
matrix(data = meusdados, nr = 5, nc = 2, byrow = T) #orientação por linha
matrix(data = meusdados, nr = 5, nc = 2, byrow = F) #orientação por coluna

#Fatiando a Matriz - Slice
mat <-matrix(c(2,3,4,5), nr = 2)
mat       
mat[1,2] #linha e coluna
mat[2,2]
mat[1,3]
mat[,2] #Coluna
mat[2,] #Linha

#Criando uma matriz na diagonal
matriz = 1:3
diag (matriz)

# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag (vetor)

#Transposendo a Matriz - Mudar a organização dos meus valores (Em BI pivô)
S <- matrix (c(3,6,9,12), nr = 2, nc = 2)
S
t(S)  #t = transposta
U <- t(S)
U

#Obtendo uma matriz inversa -
W = matrix (c(2,4,8,10))
W
W = matrix (c(2,4,8,10), nr = 2, nc = 2)
W
solve(W)


#Operações com Matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

#Produto de matriz e vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
y
x * y 

#Nomeando a Matriz
mat3 <- matrix(c('Futebol', 'Natação', 'Campo', 'Piscina'), nr = 2)
mat3
dimnames(mat3) = (list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3


#Criando matriz nomeada com um unico comando
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2" ), 
                                                    c( "Coluna 1", " Coluna 2")))


#Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5) #cbind = juntar a duas matrizes por colunas
rbind(mat4, mat5) #rbind = união por linhas


# Desconstruindo a Matriz
c(mat4)
