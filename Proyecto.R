library (NLP)
library (RColorBrewer)
library (tm)
library (wordcloud)

# leer el archivo csv
archivo <- read.csv2("proy.csv",header = TRUE)

#Cambiar el color de fondo
par(bg="black")

# Creamos la nube
wordcloud( archivo$X_TagName , archivo$X_Count ,min.freq=1, max.words = 1024 ,random.order = TRUE , scale =c (1,.200), colors = brewer.pal(8,"Dark2"))
