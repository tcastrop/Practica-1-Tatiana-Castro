#Estructura de control 
#iF

Calificación = 100

if (Calificación <= 70) {
  
  print("Reprobado")
  
}else{
  
  print("Aprobado")
  
}

#For 
Final=8

for (i in 1:Final) {
  
  if (i>5) {
    print("Soy mayor 5")
  }
  
}

#DOUBLE, INTEGER, CARACTER
#integer
i=8L
typeof(i)

#double 
d = 3.5
typeof(d)

#String
s = "Aprobado"
typeof(s)

#VECTOR ENTEROS
Vector_Entero = c(3, 5, 9, 6, 7, 2, 1)
Vector_Entero

#VECTOR MESES AÑO
Vector_Meses = c("ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE")
Vector_Meses

#VECTOR NOMBRE PERSONAS
Vector_Personas = c("ANITA", "ROSITA", "FLORCITA", "CARLITOS", "PEPITO", "JUANCITO")
Vector_Personas

#NOMBRE PELICULA, PUNTUACION, ANTES 2005
# crear vector carácter con nombre de las películas
Nombre = c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")

# crear vector numérico con puntuación de las películas
Puntuacion = c(7.9, 7.2, 6.1, 6.3)

# crear vector lógico sobre si la película es posterior a 2015
Antes2005 = c(FALSE, FALSE, TRUE, TRUE)

#FUNCIONES
length(Puntuacion) 
min(Puntuacion)
max(Puntuacion)
sum(Puntuacion)
mean(Puntuacion)
median(Puntuacion)
sort(Puntuacion)
plot(Puntuacion)
unique(Puntuacion)
which.max(Puntuacion)
which.min(Puntuacion)
sqrt (Puntuacion)

#VECTOR CON VALORES
seq (1:100)
seq (0,100, by=10)
