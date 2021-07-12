#Punto 1
X =c(65,80,90,94,72,86,78,86,98,100)
names(X)=c("Juan", "Maria", "Clara", "Roberto", "Carlos", "Ricardo", "Paola", "Marvin", "Rosario", "Pedro")
names(X)
print(X)
plot(X)

#Punto 2

#Verificar Data Frame
Financials = data.frame(Financials)
class(Financials)

#Punto A
VarTempFinancials = select(Financials, Name, Sector, Price)
View(VarTempFinancials)

#Punto B

IVA = (VarTempFinancials$Price *0.13)
View(IVA)

#Punto C
PuntoC= filter(Financials)
View(Filter)



#VOY POR AQUI



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

View ( dplyr )

#mutate
Productos=mutate(Productos, ColumnaNueva=PrecioUnidad*3)
Productos=mutate(Productos, FechaHoy=date())

#Group By
dataAgrupada = iris%>%group_by(Species)%>%
  summarise(mean(Petal.Length))

dataAgrupadaProductos = Productos %>% group_by(Categoría)%>%
  summarise(n=n())
