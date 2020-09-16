vetor <- (c(1,2,3,4,5,6,7,8,9,10,11,12))
vetor

matriz1 <- matrix(c(1:16), nrow = 4, ncol = 4)
mat

lista1  <- list(vetor, matriz1)
lista1

df <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
df

names(df) = c("config", "esfc","chang")
df

iris

class(iris)

dim(iris)

summary(iris)

str(iris)

plot(iris$Sepal.Length, iris$Sepal.Width)

help(subset)

iris1 <- subset(iris, Sepal.Length > 7)
iris1

install.packages("dplyr")
library("dplyr")

?slice

iris2 <- slice(iris, 1:15)
iris2


RSiteSearch("filter")

iris3 <- filter(iris2, Sepal.Length > 6)
iris3


