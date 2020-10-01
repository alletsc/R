 #Script expressoes regulares


# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)

# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padros", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")

length(str)
str

# grep()
grep("ex", str, value = F) #value = F retorna o indice
grep("ex", str, value = T) # = T em qual elemento encontrou o vetort
grep("\\d", str, value = F) # \\d = digitos \\D nao digitos
grep("\\d", str, value = T)


# grepl()
grepl("\\d+", str) #\\d+ comecar e terminar com digito
grepl("\\D", str)


# gsub
gsub("em", "|", str)
str
gsub("ex", "EX", str, ignore.case = T) #para ignorar diferenca de maiusculas e minusculas


# sub() #substituit apenas no primeiro elemento encontrado
sub("em", "EM", str)


# regexpr() retorna um vetor
frase <- "Isso e uma string."
regexpr(pattern = "u", frase)


# gregexpr() retorna uma lista
gregexpr(pattern = "u", frase)



str2 <- c("2678 e maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")

str2

# gsub()
gsub("\\d", "", str2) #substitui o digito por nada ou seja apaga
gsub("\\D", "", str2) #remover as palavras
gsub("\\s", "", str2) #remover espacos
gsub("[iot]", "Q", str2) #toda vez q encontrar i o t substitui por Q
gsub("[[:punct:]]", "", str2) #remover pontuacao
gsub("[^@]", "", str2) #remover tudo exceto @






