# Maps
install.packages("mapdata")
install.packages("maps")
library(maps)
library(mapdata)
map("worldHires","Canada",
    xlim=c(-141,-53),
    ylim=c(40,85),
    col="gray90",
    fill=TRUE)


?map
help(package='maps')


# Gráficos de Rede, interativos - pacote baseado em js
install.packages("networkD3")
library(networkD3)

data(MisLinks, MisNodes)
forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4)

?networkD3

library(networkD3)

# Criando dados
src <- c("A", "A", "A", "A",
         "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J",
            "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)

# Plot
simpleNetwork(networkData)


# Heatmap
install.packages("heatmaply")
library(heatmaply)
heatmaply(mtcars, k_col = 2, k_row = 3) %>% layout(margin = list(l = 130, b = 40))


# Gráfico Interativo
install.packages("dygraphs")
library(dygraphs)

dygraph(nhtemp, main = "Temperaturas") %>%
  dyRangeSelector(dateWindow = c("1920-01-01", "1960-01-01"))


#rmaps
  

  