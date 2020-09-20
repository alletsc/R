#Script para exemplificação de fatores em R

vec1 <- c("Macho","Femea","Femea","Macho","Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

#Variaveis Qualitativas Nominais

animais <- c("Zebra", "Pantera", "Rinoceronte", "Macaco", "Tigre")
animais
class(animais)
fac_animais <- factor(animais) #convertendo nosso vetor
fac_animais
class(fac_animais)
levels(fac_animais)

#Variaveis Qualitativas Ordinais - ja possuem uma ordem natural

grad <- c("Mestrado", "Doutorado", "Bacharelado", "Mestrado", "Mestrado")
grad
#criando uma ordenação com niveis predefinidos
fac_grad <- factor(grad, order = TRUE, levels = c("Doutorado", "Mestrado", 
                                                  "Bacharelado")) 
fac_grad
levels(fac_grad) 

summary(fac_grad) #como um vetor ordenado podemos obsevar o numero de 
                  # elementos dentro de cada categoria

summary(grad) #com o vetor nao fatorado nao temos essa classificação

#Exemplo2
vec2 <- c("M", "F", "F", "M", "M", "M", "F", "F", 
          "M", "M", "M", "F", "F", "M", "M")
vec2
fac_vec2 <- factor(vec2)
fac_vec2

levels(fac_vec2) <- c("Femea", "Macho") #Convertendo e renomeando o vetor
fac_vec2
summary(fac_vec2)

#Exemplo3
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data,labels=c("I","II","III"))
rdata

#Fatores nao ordenados:
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

f.set1 <- factor(set1) 
f.set1
class(f.set1)
is.ordered(f.set1) #verificando se há ordenação. Quando criamos fatores ele 
                    # nao estará ordenado


o.set1 <- factor(set1,  #criando a ordenação
                 levels = c("CA", "BA", "AA", "CC", "B"), 
                 ordered = TRUE)

o.set1
is.ordered(o.set1)

as.numeric(o.set1) #convertendo o vetor ordenado em numerico
table(o.set1)       #conferindo a ordenação numerica


#Podemos usara a funcao read e carregar csv para criar nossos fatores
#R automaticamente converte algumas colunas de dataframes em fator
#Podemos ainda plotar nossos fatores

vec1 <- c(1001, 1002, 1003, 1004, 1005)
vec2 <- c(0, 1, 1, 0, 2)
vec3 <- c('Verde','Laranja','Azul','Laranja','Verde')

df <- data.frame(vec1, vec2, vec3)#unindo fatores em dataframe
df
str(df)

levels(df$vec3) # coluna vetor 3 nao ordenado

#criando coluna cat1
df$cat1 <- factor(df$vec3, labels = c("cor2", "cor1", "cor3")) #criando ordençao
#e renomeando cor2=verde cor3=laranja cor1=azul
df

str(df)

#criando coluna cat2
df$cat2 <- ?factor(df$vec2, labels = c("Divorciado", "Casado", "Solteiro"))
df
str(df)
levels(df$cat2)










