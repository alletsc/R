#Notebook para demonstração de Gráficos
search()
demo("graphics")
x <- 5:7
y <- 8:10
plot(x,y)

altura <- c(145, 167, 176, 123, 150)
largura <- c(51, 63, 64, 40, 55)
plot(altura,largura)

#Plotando dataframes

?lynx
plot(lynx)
plot(lynx, ylab = "Eixo Vertical (Y)", xlab = "Eixo horizontal (X)")
plot(lynx, ylab = "Plotando Dataframes", xlab = "Observções")
plot(lynx, main = "Plotando Dataframes", col = 'red') #Adicionando titulo e selecionando cor 
plot(lynx, main = "Plotando Dataframes", col = 'red', 
     col.main = 52, cex.main = 1.5) #Posicionamento do titulo

library(datasets)
hist(warpbreaks$breaks) #Criação de histograma

airquality &lt;- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)") #criando boxplot

#Especificando parametros de plots básicos

#Especificando os parametros

# col - cor do plotting
# lty - tipo de linha
# lwd - largura de linha
# pch - simbolo no plot
# xlab - label do eixo x
# ylab - label do eixo y
# las - como os labels dos eixos sao orientados
# bg - background color

# mfrow - numero de plots por linha
# mfcool - numero de plots por coluna

#Funcoes Basicas de Plot

# plot() - scatterplots
# lines() -  adiciona linhas ao grafico
# points() - adiciona pontos ao grafico
# text() - adiciona label ao grafico
# title() - adiciona titulo ao grafico

?par #usamos para definir os parametros dos nosso graficos antes de construilo
par()
par('pch') #visualizar os valores do atributo
par('lty')

x = 2:4
plot(x, pch = "c")

par(mfrow = c(2,2), col.axis = "red")
plot(1:8, las = 0, xlab = "xlab", ylab = "ylab", main = "LAS = 0")
plot(1:8, las = 1, xlab = "xlab", ylab = "ylab", main = "LAS = 1")
plot(1:8, las = 2, xlab = "xlab", ylab = "ylab", main = "LAS = 2")
plot(1:8, las = 3, xlab = "xlab", ylab = "ylab", main = "LAS = 3")
legend("topright", pch = 1, col = c("blue", "red"), 
       legend = c("Var1","Var2"))

colors()

#Salvando os graficos
#os graficos sao salvos no seu diretorio de trabalho
getwd()
setwd()
# png
png("Grafico1.png", width = 500, height = 500, res = 72)

plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Grafico do Iris")

dev.off() #fechar canal 


# pdf
pdf("Grafico2.pdf") #pdf + nome do arquivo

plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     main = "Grafico do Iris")

dev.off() #fechar o canal


#Funcoes do Plot
install.packages('plotrix')
library(plotrix)
?plotrix

par(mfrow = c(1,1), col.axis = "red") #Definindo valores para nossos atributos

plot(1:6, las = 3, xlab = "xlab 1:6",
     ylab = "ylab 1:6", main = "Mais opcoes de plot")

ablineclip(v=1, lty=1, col="sienna2", lwd=2) #ablineclip adiciona linhas em cada elemento do eixo x

ablineclip(v=2, lty=1, col="blue", lwd=2)
ablineclip(v=3, lty=1, col="gray", lwd=2)
ablineclip(v=4, lty=1, col="pink", lwd=2)
ablineclip(v=5, lty=1, col="green", lwd=2)
ablineclip(v=6, lty=1, col="orange", lwd=2)
ablineclip(v=7, lty=1, col="sienna2", lwd=2)


plot(lynx)
plot(lynx, type="p", main="Type p")
plot(lynx, type="l", main="Type l")
plot(lynx, type="b", main="Type b")
plot(lynx, type="o", main="Type o")
plot(lynx, type="h", main="Type h") #!
plot(lynx, type="s", main="Type s")
plot(lynx, type="n", main="Type n")

#Dois plots juntos
par(mar=c(4,3,3,3), col.axis="black")

plot(cars$speed, type="s", col="red", bty="n", xlab="Cars ID", ylab="")
text(8, 14, "Velocidade", cex=0.85, col="red") 
par(new=T) 

plot(cars$dist, type="s", bty="n", ann=F, axes=F, col="darkblue")
axis(side=4)
text(37, 18, "Distancia", cex=0.85, col="darkblue") #

title(main="Speed x Distance")

# Plots de datasets
setwd("C://Users//stell//OneDrive//Área de Trabalho Meu Desktop")
getwd()
df <- read.csv('pibpercap.csv', stringsAsFactors = F) #stringsAsfactor = converter colunas para fator (nao classifica nada como variavel categorica)
df_1982 <- subset(df, ano == 1982) #criando subset
plot(expectativa ~ pibpercap, data = df_1982, log = "x")

head(df)

mycol <- c(Asia = "red", Europe = "green", Africa = "blue", 
           Americas = "darkgoldenrod1", Oceania = "green4")
plot(expectativa ~ pibpercap, data = df_1982, log = "x", col = mycol[continente])



#Mudando a escala dos elementos conforme o numero de vezes que ele aparece
mycex <- function(var, r, f = sqrt){
  x = f(var)
  x_scaled = (x - min(x))/(max(x) - min(x))
  r[1] + x_scaled * (r[2] - r[1])
}


plot(expectativa ~ pibpercap, data = df_1982, log = "x",
     col = mycol[continente],
     cex = mycex(pop, r = c(0.2, 10)))
