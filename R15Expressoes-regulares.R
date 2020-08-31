#Notebook para demonstracao de expressoes regulares 
#Atencao para identacao 

str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo", "10992451280")

length(str)
str

#grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
grep("ex", str, value = F)
grep("\\d", str, value = F)
grep("ex", str, value = T)
grep("\\d", str, value = T)

#grepl() #Retorna TRUE quando um padrão é encontrado
#grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
grepl("\\d+", str) #\\d+ sequencia de digitos
grepl("\\D", str) #\\D tudo que seja nao digito

# gsub #substitui por especificado
gsub("em", "|", str) #procurou por em e substituiu por |
gsub("ex", "EX", str, ignore.case = T) #maiusculo ou minusculo

# sub() - substitui apenas o primeiro padrao em cada elemento do vetor
sub("em", "EM", str) 

# regexpr() - mostra onde encontrou o padrao
frase <- "Isso e uma string."
regexpr(pattern = "u", frase)

# gregexpr 
gregexpr(pattern = "u", frase)

str2 <- c("2678 e maior que 45 - @!%$",
          "Vamos escrever 14 scripts R")
str2

# gsub()
gsub("\\d", "", str2)
gsub("\\D", "", str2)
gsub("\\s", "", str2)
gsub("[iot]", "Q", str2) #Substitui ioq por Q
gsub("[[:punct:]]", "", str2)
gsub("[@!%$]", "", str2)


# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
