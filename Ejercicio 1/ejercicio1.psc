Algoritmo ejercicio1
	Definir num, cPar, cImpar, sumaImpar, max, min Como Entero
	cPar <- 0
	cImpar <- 0
	sumaImpar <- 0
	Escribir 'Ingresar el primer n�mero ganador'
	Leer num
	max <- num
	min <- num
	Si ((num MOD 2)==0) Entonces
		cPar <- cPar+1
	SiNo
		cImpar <- cImpar+1
		sumaImpar <- num
	FinSi
	Para i<-1 Hasta 19 Con Paso 1 Hacer
		Escribir 'Ingresar el pr�ximo n�mero ganador'
		Leer num
		Si ((num MOD 2)==0) Entonces
			cPar <- cPar+1
		SiNo
			cImpar <- cImpar+1
			sumaImpar <- sumaImpar+num
		FinSi
		Si num<min Entonces
			min <- num
		FinSi
		Si num>max Entonces
			max <- num
		FinSi
	FinPara
	Escribir 'Se ingresaron ', cPar, ' n�meros pares, con ', trunc(sumaImpar/cImpar), ' es el promedio de los n�meros impares '
	Escribir 'El mayor n�mero ingresado fue ', max, ' y el menor fue ', min
FinAlgoritmo
