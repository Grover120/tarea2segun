Algoritmo conteo_caracol
	Escribir "Ingrese la dimension solo impares"
	Repetir
		Leer dime
	Hasta Que dime %2<>0	
	Dimension a[dime,dime]
	c<-1
	p<-1
	f<-dime
	Mientras c<=dime*dime Hacer
		Para avanzar <- p Hasta f Con Paso 1 Hacer
			a[p,avanzar] <-c
			c<- c+1
		Fin Para
		Para avanzar <- p+1 Hasta f Con Paso 1 Hacer
			a[avanzar,f] <-c
			c<- c+1
		Fin Para
		Para avanzar <- f-1 Hasta p Con Paso -1 Hacer
			a[f,avanzar] <-c
			c<- c+1
		Fin Para
		Para avanzar <- f-1 Hasta p+1 Con Paso -1 Hacer
			a[avanzar,p] <-c
			c<- c+1
		Fin Para
		p<- p+1
		f<- f-1
	Fin Mientras
	
	Para i<-1 Hasta dime Con Paso 1 Hacer
		Para j<-1 Hasta dime Con Paso 1 Hacer
			Escribir Sin Saltar a[i,j] "  "
		Fin Para
		Escribir ""
	Fin Para
FinAlgoritmo