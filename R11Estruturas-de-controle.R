#Notebook para demonstraçao de Estruturas de controle

#If e else
x = 29
if (x < 30) 
{"Este numero é maior que 30"}

#Else
if (x < 7) {
  "Este número é menor que 7"
  } else 
  {"Este numero é maior que 7"
    }

#Aninhar comandos
x = 7
if (x < 7) {
  "Este numero é menor que 7"
} else if(x == 7) {
  "Este é numero é menor que 7"
}else{
  "Este é numero é maior que 7"
}

#ifelse
x = 5
ifelse (x < 6, "Correto!", NA)

x = 9
ifelse (x < 6, "Correto!", NA)

?NA

#Aninhando ifelse
x = c(7,5,4)
ifelse(x < 5, "Menor que 5", 
       ifelse(x == 5, "Igual a 5", "Maior que 5"))

#if em funçoes
func1 <- function(x,y){
  ifelse(y < 7, x + y, "Não encontrado")
}

func1(4,2)
func1(40,7)


#Rep
rep(rnorm(10), 5)


#Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)}


#Loop For
for (i in 1:20) {print(i)}
for (q in rnorm(10)) {print(q)}

#Ignorando elementos no loop
for(i in 1:22){
  if(i == 13 | i == 15)   # | = ou
    next
  print (i)}

#Interromper o loop
for(i in 1:22){
  if(i == 13)
    break
  print (i)}

#Loop While
x = 1
while(x < 5){
  x = x + 1
  print(x)
}

#não executado
y = 6
while(y < 5){
  y = y+10
  print(y)
}









