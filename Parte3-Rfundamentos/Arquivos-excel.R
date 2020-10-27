#Excel como fonte ou saida de dados

# Instalar o Java - JRE 
# http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html

Sys.setenv(JAVA_HOME = '/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre')
Sys.getenv("JAVA_HOME")
system("java -version")
options(java.home = "/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/jre")

# Requer Java
# XLConnect
# xlsx
# rJava 

# Requer Perl
# gdata

# readxl
install.packages("XLSXsupport")
install.packages("rJava", type = "source") #rodar java dentro R
install.packages("xlsx")
#install.packages("XLConnect")
install.packages("readxl")
install.packages("gdata")
library(readxl)
library(rJava) #
library(xlsx)
#library(XLConnect) # java entre 8 e 11
library(gdata)

setwd("D:\\OneDrive\\Área de Trabalho Meu Desktop\\R")
# Pacote readxl - rápido e simples
# Listando as worksheet no arquivo Excel
excel_sheets("UrbanPop.xlsx")

# Lendo a planilha do Excel
read_excel("UrbanPop.xlsx")
head(read_excel("UrbanPop.xlsx"))
read_excel("UrbanPop.xlsx", sheet = "Period2") #indicando qual worksheet quero ler
read_excel("UrbanPop.xlsx", sheet = 3) #apenas o num
read_excel("UrbanPop.xlsx", sheet = 4) #passando worksheet que nao existe :p

# Importando uma worksheet para um dataframe
df <- read_excel("UrbanPop.xlsx", sheet = 3)
head(df)

# Importando todas as worksheets - lapply
df_todas <- lapply(excel_sheets("UrbanPop.xlsx"), read_excel, path = 'UrbanPop.xlsx')
df_todas
class(df_todas) #lapply retorna lista


# Pacote XLConnect
#arq1 = loadWorkbook("UrbanPop.xlsx")
#df1 = readWorksheet(arq1, sheet = "Period1", header = TRUE)
#df1
#class(df)


# Pacote xlsx - 
df2 <- read.xlsx("UrbanPop.xlsx", sheetIndex = 1)
df2
#indicando worksheet, linha e coluba
df3 <- read.xlsx2("UrbanPop.xlsx",
                 sheetIndex = 1,
                 startRow = 2,
                 colIndex = 2)
df3


write.xlsx(df3, "df3.xlsx", sheetName = "Data Frame") #gravando arquivo excel
dir()


# Pacote gdata - ver funcao converter xlsx em csv



