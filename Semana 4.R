#Histogramas
#Analisis exploratorios 1- Qué quiero

hist (x=Netflix$'IMDB Score', 
      main= "Histograma IMDB Score - Netflix",
      xlab= "Score",
      ylab= "Frecuencia",
      col= "red")

#Plots
#Relacion y Correlacion 
#Dispersion
plot (Netflix$Runtime, Netflix$'IMDB Score')

#Grafico de Barras
dataNetflixFiltrada = filter(Netflix, 'IMDB Score'>5.5 & 'IMDB Score'<7.5)

plot(as.factor(dataNetflixFiltrada$Genre))

#Time based plot
mis_fechas <- seq(as.Date("2005/1/1"), by = "month", length=50)
plot(mis_fechas,rnorm(50), type = "1")