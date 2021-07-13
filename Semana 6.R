#Regresión lineal simple 
#m+by

data("Orange")
View(Orange)
library(tidyverse)


ggplot(data = Orange, aes(x=age,y=circumference))+
  geom_point()+
  geom_abline(intercept = 17,3,
              slope = 0.10,
              col = 'blue') +
  geom_vline(xintercept = 800,
             col = 'red')

#Ajuste de regresión Calcular la circunferecia depediendo de la 
#edad lm(dependiete, pendiente, data)
Regresion =lm(circumference ~ age, data = Orange)#Entrenando
summary(Regresion)

# Paso 1
grasas  <- read.table ( ' http://verso.mat.uam.es/~joser.berrendero/datos/EdadPesoGrasas.txt ' , header  =  TRUE )

nombres ( grasas )
cabeza ( grasas )
cola ( grasas )

# Paso 2 buscar la correlación visual
pares ( grasas )

# Paso 3 Correlación exacta
cor ( grasas )

# Paso 4Entrenar al modelo
Regresión  = lm ( grasas ~ edad , datos  =  grasas )
resumen ( regresión )

# Paso 5 generar regresión visual
parcela ( grasas $ edad , grasas $ grasas , xlab  =  " Edad " , ylab  =  " Grasas " )
abline ( Regresión )

# Paso 6 Prediccion (Prueba)
nuevas_edades  =  data.frame ( edad = seq ( 30 , 50 ))

# Paso 7 ejecutar prediccion