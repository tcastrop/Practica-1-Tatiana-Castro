#Instalamos solo un paquete dplyr
install.packages("dplyr")
library(dplyr)

#Instalamos todos los paquetes de la colección
install.packages("tidyverse")
library(tidyverse)

#Verificar Data Frame
Productos = data.frame(Productos)
class(Productos)

#Head
head(Productos)

#Tail
tail(Productos)

#Resumen
summary(Productos)

#dplyr

#1 Selecccionar
var_productos=select(Productos,NombreProducto, Categoría, PrecioUnidad)
View(var_productos)

var_productos2 = select(Productos, 1:3)
View(var_productos2)
View(select(Productos, stars_with("Prove")))

select(Productos, ends_with("a"))
select(Productos, contains("x"))

#Filter filter (data,condicion)

View (filter(var_productos, Categoría=="Bebidas"))
View (filter(Productos, NivelNuevoPedido>10 & Categoría =="Bebidas"))

#Arrange arrange(data.columna)

View(arrange(Productos, Productos$PrecioUnidad))

#Rename (data, nombre=nombreAntiguo)
View(rename(Productos, TipoProducto = Categoría))

#mutate
Productos=mutate(Productos, ColumnaNueva=PrecioUnidad*3)
Productos=mutate(Productos, FechaHoy=date())

#Group By
dataAgrupada = iris%>%group_by(Species)%>%
              summarise(mean(Petal.Length))

dataAgrupadaProductos = Productos %>% group_by(Categoría)%>%
                      summarise(n=n())

#select Specie, mean (Petal.Length) from iris
#group by Specie

#Funciones anidades
dataAgrupadaProductos = Productos %>% group_by(Categoría)%>% 
                      summarise(Proveedor=n())

dataAgrupadaProductos = Productos %>% group_by(Proveedor)%>% 
  summarise(Cantidad=n())





