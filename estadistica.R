---
title: "estadistica para R"
author: "Fernando Lazcano"
date: "4/4/2023"
output: pdf_document
---

empecemos por la base de los conceptos 

¿que es la estatidistica ?

La estadística es una rama de las matemáticas que se utiliza para recopilar, analizar, interpretar y presentar datos numéricos. Su objetivo principal es describir y comprender los fenómenos y las relaciones entre variables en el mundo real, mediante el uso de técnicas y métodos estadísticos.

¿ en que se divide la estadistica ?


Estadística descriptiva: es la rama de la estadística que se centra en la recopilación, organización, resumen y presentación de datos. Esta parte de la estadística se utiliza para describir las características y patrones de los datos, y para resumir la información de manera útil y comprensible. Algunos de los métodos utilizados en la estadística descriptiva incluyen la medida de tendencia central (como la media, la mediana y la moda), la medida de dispersión (como la desviación estándar y el rango) y la representación gráfica de datos (como histogramas, diagramas de caja y diagramas de dispersión).

Estadística inferencial: es la rama de la estadística que se utiliza para hacer inferencias y tomar decisiones basadas en datos. Esta parte de la estadística se basa en la teoría de la probabilidad y se utiliza para hacer predicciones, estimaciones y pruebas de hipótesis. Algunos de los métodos utilizados en la estadística inferencial incluyen la regresión, el análisis de varianza (ANOVA), la prueba de hipótesis, la estimación de intervalos de confianza y el muestreo estadístico.




suma , rango , mediana, media 

```{r}
x <- c (5 , 6 , 81 ,5 ,1 , 6 , 75 , 10)
 

sum(x)
length(x)
sum(x)/length(x)
mean(x)
summary(x)

```

 1 q y 3 q primer y segundo cuartil
 
 ahora vamos agrergar valores aletaorios para poder correrlos de nuevo con un estimado de 50 valores 
 
```{r}

x <- rnorm(50, mean = 0, sd = 20)

x <- abs(runif(50, min = -100, max = 100)) # numeros decimales 


x <- abs(sample(-100:100, 50, replace = TRUE))

```
 
 
 
 con esos datos nuevos procederemos a ver la frecuencia de los mismos 
 
 
```{r}
table(x)
```
 
 para las medidas de dispersion utilizaremos el siguiente codigo
 
 Varianza y Desviación estándar
 
 
 La varianza se define como la media de los cuadrados de las desviaciones de los datos con respecto a su media. En otras palabras, mide qué tan alejados están los datos de la media en términos de sus diferencias cuadradas. Se denota con el símbolo σ² (sigma al cuadrado) para una población y s² para una muestra.
 
 σ² = Σ(xi - μ)² / N

Donde:

xi es cada uno de los valores de la población
μ es la media de la población
Σ representa la suma de todos los valores
N es el tamaño de la población

Por otro lado, la desviación estándar es simplemente la raíz cuadrada positiva de la varianza. Es decir, es la medida de dispersión que se utiliza con más frecuencia ya que está en la misma unidad que los datos. Se denota con el símbolo σ para una población y s para una muestra.

σ = sqrt(Σ(xi - μ)² / N)



```{r}
var(x)

sd(x)
```
 
 
 
 
 
 
 formula de combinaciones 
 
 C(n,r) = n! / (r!(n-r)!)

n es el número total de elementos en el conjunto.
r es el número de elementos que se seleccionan.

procedemos con un ejemplo 
```{r}

n = 7
r = 3

choose(n, r)

```
vemos la frecuencias de x ; lo que podemos ver es que es un histograma alejado de una distribucion normal o lo que queremos que es una campana de gauss.


para poder ver un histograma mas acercado a la teoria introduccimos el siguiente codigo donde tendremos un promedio de 5 y una desviacion estadar de 2 

hist(rnorm(1000, mean = 5 , sd= 2))

```{r}
hist(x)


hist(rnorm(1000, mean = 5 , sd= 2))
```


dsitribucion normal 


La distribución normal, también conocida como distribución de Gauss o campana de Gauss, es una distribución de probabilidad continua que se utiliza comúnmente en estadística para describir muchos fenómenos naturales, sociales y económicos.

La distribución normal tiene una forma de campana simétrica alrededor de su valor medio o media. La mayor parte de los datos se encuentran cerca de la media y la probabilidad de que un dato se encuentre muy lejos de la media es muy baja. La distribución normal está completamente definida por su media y su desviación estándar.


z = (x-μ)/σ

ó

f(x) = 1/(σ*sqrt(2π)) * exp(-((x-μ)²/(2σ²)))


x: el valor de la observación o la variable que analizaremos 
μ: la media de la distribución normal
σ: la desviación estándar de la distribución normal



teorema de bayes 

P(A|B) = (P(B|A) * P(A)) / P(B)

 
