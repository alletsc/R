#Exercicios sugeridos para fixa��o de fundamentos 

#1	- Crie	um	vetor	com	12	n�meros	inteiros
vector1 <- (1:12)
vector1

#2- Crie	uma	matriz	com	4	linhas	e	4	colunas	preenchida	com	n�meros	inteiros
matriz1 <- matrix(c(1:16), nr = 4, nc = 4)
matriz1

#3 - Crie	uma	lista	unindo	o	vetor	e	matriz	criados	anteriormente
list1 <- list(vector1, matriz1)
list1

#4 - Usando	a	fun��o	read.table()	leia	o	arquivo	do	link	abaixo	para	uma	dataframe
#	http://data.princeton.edu/wws509/datasets/effort.dat
df1 <- read.table('http://data.princeton.edu/wws509/datasets/effort.dat')
df1

#5	- Transforme	o	dataframe	anterior,	em	um	dataframe	nomeado	com	os	seguintes	c("config",	"esfc",	"chang")
names(df1) <- c('config','esfc','chang')
df1

#6	- Imprima	na	tela	o	dataframe	iris,	verifique	quantas	dimens�es	existem	no
print(iris)
dim(iris)

class(iris)
dim(iris)
summary(iris)
str(iris)

#7	- Crie	um	plot	simples	usando	as	duas	primeiras	colunas	do	dataframe	iris
plot(iris$Sepal.Length, iris$Sepal.Width)

#8- Usando	s	fun��o	subset,	crie	um	novo	dataframe	com	o	conjunto	de	dados	do dataframe	iris	em	que	Sepal.Length >	7
#	Dica:	consulte	o	help	para	aprender	como	usar	a	fun��o	subset()
?subset
iris1 <- subset(iris, Sepal.Length > 7)
iris1


#	Exerc�cios	9	- Crie	um	dataframe	que	seja	c�pia	do	dataframe	iris	e	usando	a	fun��o	slice(),	
#divida	o	dataframe	em	um	subset	de 15	linhas
#	Dica	1:	voc�	vai	ter	que	instalar	e	carregar	o	pacote	dplyr
#	Dica	2:	consulte	o	help	para	aprender	como	usar	a	fun��o	slice()
install.packages("dplyr")
library("dplyr")
iris2 <- iris
iris2
?slice
iris3 <- (slice(iris2, 1:15))
iris3


#	Exerc�cios	10 - Use	a	fun��o	filter	no	seu	novo	dataframe	criado	no	item	anterior	e	retorne	apenas	valores	em	que	Sepal.Length	>	6
#	Dica:	use	o	RSiteSearch() para	aprender	como	usar	a	fun��o	filter

RSiteSearch('filter')
filter(iris3, Sepal.Length > 7)
















