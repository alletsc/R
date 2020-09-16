#Notebook criado para demonstração de Variáveis (Programação)

var1 = 361
var1
mode(var1)
help(mode)
sqrt(var1)


var2 = as.integer(var1)
var2
mode(var2)
typeof(var2)
help("typeof")

var3 = c("seg", "ter", "qua")
var3
mode(var3)

#Funções
var4 = function(x) {x+3}
var4
mode(var4)


#Alteração no Tipo do dado 
var5 = as.character(var1)
var5
mode(var5)


# Atribuição de valores a objetos
x <- c(7,5,6)
x
c(7,5,6) -> y
y
assign("x", c(1.3,4,-2))
x

#Verificando valor de uma variavel em uma posição especifica
x[1]
x[3]


#Listando Objetos criados
ls()
objects()


# Removendo objetos criados 
rm(x)
x
