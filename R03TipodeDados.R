#Notebook criado para exemplificação de Tipos de Dados

#Numericos
num = 7.9
num2 = 78
x = -852
x
class(num)

#Conversão de Numericos
is.integer(num2)
y = as.integer(num2)
class(y)
x2 = 3.15
x2
y2 = as.integer(x2)
class(y2)
as.integer('4.27')
as.integer('Stella')
as.integer("Stella")
as.integer(T)
as.integer(FALSE)


#Character
char0 = 'A'
char0
char = "Stella"
char
class(char)

#Complex
compl = 2.5 + 4i
class(compl)

sqrt(81)
sqrt(-1+0i)
sqrt(as.complex(-7))

#Logic
x = 1; y = 2
z = x > y
z
class(z)

u = T; V = F
u & v
u | v
!u


#Operações com 0
5/0
0/5

#Erro
'Joe'/5
q()
