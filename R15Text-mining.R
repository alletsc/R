#Notebook para demonstraca de text mining

install.packages(c("tm", "SnowballC", "wordcloud", "RColorBrewer"))
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

df <- read.csv('questoes.csv', stringsAsFactors = FALSE)
head(df)

install.packages("tm")  
install.packages("SnowballC") 
install.packages("wordcloud") 
install.packages("RColorBrewer") 

library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

arquivo <- "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
texto <- readLines(arquivo)

##############################################################################
library(reshape)
library(tm)
library(wordcloud)

dataset=read.delim("https://raw.githubusercontent.com/TATABOX42/text-mining-in-r/master/dataset.txt", header=FALSE)

