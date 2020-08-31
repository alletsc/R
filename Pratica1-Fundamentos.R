# R na pratica
#Notebook para demonstrção de Analise de Dados

# Dataset: Berkeley Earth
# http://berkeleyearth.org/data (coleta temperatura do mundo interio nos ultimos 100 anos)
getwd()
setwd("C://Users//stell//OneDrive//Área de Trabalho Meu Desktop")
install.packages("dtplyr")
install.packages("readr")
install.packages("data.table")
library(readr)
library(dplyr)
library(ggplot2)
library(readr)
library(scales)
library(data.table)
library(dtplyr)

?fread  #para arquivos delimitados e regulares
system.time(df <- fread("TemperaturasGlobais.csv")) #system.time para medir quanto tempo leva o processo de carragamentos dos dados
df

cidadesBrasil <- subset(df, Country == 'Brazil') #extraindo subset
cidadesBrasil <- na.omit(cidadesBrasil) #tirando valores na do dataset
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil) #verificar numero de rows
dim(cidadesBrasil)  #verificar numero de columns

cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt,format='%Y-%m-%d') #formatação de saida
cidadesBrasil$Month <- month(cidadesBrasil$dt) 
cidadesBrasil$Year <- year(cidadesBrasil$dt)   

plm <- subset(cidadesBrasil, City == 'Palmas') #Subset Palmas
plm <- subset(plm, Year %in% c(1796,1846,1896,1946,1996,2012))


crt <- subset(cidadesBrasil, City == 'Curitiba') #Subset Curitiba
crt <- subset(crt, Year %in% c(1796,1846,1896,1946,1996,2012)) #Subset anos de interesse

recf <- subset(cidadesBrasil, City=='Recife')
recf <- subset(recf,Year %in% c(1796,1846,1896,1946,1996,2012))


#Visualização
ppalmas <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mes")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

pcuritiba <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mes")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

precife <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mes")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))


ppalmas
pcuritiba
precife
