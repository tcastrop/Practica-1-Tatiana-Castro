#PUNTO 1

hist ( x = COVID_19$'Age of Subject' ,
       main  =  "Histograma Age of Subject - COVID-19" ,
       xlab  =  "Edad", 
       ylab = "Cantidad de Personas",
       col = "red")

#PUNTO 2

data.frame(COVID_19)

COVIDFiltrada= filter(COVID_19, `Region of residence`== "Delhi-NCR")
View(COVIDFiltrada)

plot(as.factor(COVIDFiltrada$`Prefered social media platform`))

#PUNTO 3

dataAgrupada3 = COVID_19%>%group_by(`Rating of Online Class experience`)%>% 
                summarise(Cantidad_Personas=n())

View(dataAgrupada3)

#PUNTO 4

dataAgrupada4 = COVID_19%>%group_by(`Prefered social media platform`, `Medium for online class`)%>% 
               summarise(Cantidad_Personas=n())

View(dataAgrupada4)

#PUNTO 5

plot(COVID_19$`Time spent on Online Class`, COVID_19$`Time spent on social media`)


