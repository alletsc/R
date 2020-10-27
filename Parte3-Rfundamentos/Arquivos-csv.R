
# Usando o pacote readr
install.packages("readr")
library(readr)
setwd("D:\\OneDrive\\Área de Trabalho Meu Desktop")
#Abre o promt para escolher o arquivo
meu_arquivo <- read_csv(file.choose())
meu_arquivo <- read_delim(file.choose(), sep = "|")

# Importando arquivos
df1 <- read_table("temperaturas.txt", 
                  col_names = c("DAY","MONTH","YEAR","TEMP"))

head(df1)
str(df1)
read_lines("temperaturas.txt", skip = 0, n_max = -1L) #ler linha a linha arquivo
read_file("temperaturas.txt")

#Exportando e Importando
write_csv(iris, "iris.csv")
dir()

# col_integer(): 
# col_double(): 
# col_logical(): 
# col_character(): 
# col_factor(): 
# col_skip(): 
# col_date() (alias = “D”), col_datetime() (alias = “T”), col_time() (“t”) 

df_iris <- read_csv("iris.csv", col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c("setosa", "versicolor", "virginica"))
))

dim(df_iris)
str(df_iris)

# Importando
df_cad <- read_csv(file.choose())
head(df_cad)

#dplyr
install.packages("dplyr")
library(dplyr)

df_cad <- as_tibble(df_cad) #convertendo para tibble
head(df_cad)
View(df_cad)

write.csv(df_cad, "df_cad_bkp.csv")


#Importando vários arquivos simultaneamente
list.files()
lista_arquivos <- list.files('D:\\OneDrive\\Área de Trabalho Meu Desktop', full.names = TRUE)
class(lista_arquivos)
lista_arquivos

lista_arquivos2 <- lapply(lista_arquivos, read_csv) #relembrando: lapply aplica funcao a cada linha
problems(lista_arquivos2)

# Parsing - definindo formato de data
parse_date("01/02/15", "%m/%d/%y")
parse_date("01/02/15", "%d/%m/%y")
parse_date("01/02/34", "%y/%m/%d")


locale("en")
locale("fr")
locale("pt")


#bigmemory - pacote visando otimizar importação grandes conjuntos de dados           
install.packages("bigmemory")
library(bigmemory)
?bigmemory
