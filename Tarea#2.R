#Use conexiones a SQL 
BD_ETL <- DBI::dbConnect(odbc::odbc(),
                               Driver = "SQL Server",
                               Server = "dbtedamssql.uh.ac.cr",
                               Database = "ETL",
                               UID = rstudioapi::askForPassword("Database user"),
                               PWD = rstudioapi::askForPassword("Database password"),
                               Port = 1433)

BD_ETL=dbGetQuery(BD_ETL,"select * from [BD_Clientes]")
View(BD_ETL)

#Plots
#Relación y correlación
#Dispersión
plot(ETL$Runtime,Netflix$`IMDB Score`)

#Grafico de barras
dataNetflixFiltrada = filter(Netflix, Netflix$`IMDB Score`>6  & `IMDB Score`<6.5)

plot(as.factor(dataNetflixFiltrada$Genre))

#Time based plot

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 

plot(mis_fechas,rnorm(50), type = "l")

#Correlación 

View(trees)

plot(select(trees,1:3))


plot(mis_fechas,rnorm(50), type = "o", main = "Hola")