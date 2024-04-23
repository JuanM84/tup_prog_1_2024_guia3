Algoritmo ejercicio2
	Definir min, seg, dSeg, dMin, dHora, dCorta, dLarga, dTotal Como Entero
	Definir nombre, nLarga, nCorta, cad, opc Como Cadena
	// Iniciamos la duraci�n total de las canciones en 0
	dTotal <- 0
	// Solicitamos la primer canci�n
	Escribir 'Ingrese el Nombre de la canci�n'
	Leer nombre
	Escribir 'Ingrese la duraci�n de la canci�n (MM:SS)'
	Leer cad
	// Convertimos el formato texto a la duraci�n total de la canci�n en segundos 
	min <- ConvertirANumero(Subcadena(cad,0,2))
	seg <- ConvertirANumero(Subcadena(cad,4,5))
	dSeg <- min*60+seg
	// Agregamos la duraci�n de la canci�n a la canci�n total
	dTotal <- dTotal+dSeg
	// Asignamos la primer canci�n como la m�s larga y la m�s corta
	nLarga <- nombre+' '+cad
	dLarga <- dSeg
	nCorta <- nombre+' '+cad
	dCorta <- dSeg
	// Continuamos ingresando canciones?
	Escribir '�Desea ingresar otra canci�n? (S/N)'
	Leer opc
	Mientras (opc=='S' O opc=='s') Hacer
		Escribir 'Ingrese el Nombre de la canci�n'
		Leer nombre
		Escribir 'Ingrese la duraci�n de la canci�n (MM:SS)'
		Leer cad
		// Convertimos el formato texto a la duraci�n total de la canci�n en segundos 
		min <- ConvertirANumero(Subcadena(cad,0,2))
		seg <- ConvertirANumero(Subcadena(cad,4,5))
		dSeg <- min*60+seg
		// Agregamos la duraci�n de la canci�n a la canci�n total
		dTotal <- dTotal+dSeg
		// Comprobamos si es m�s larga que la guardada como m�s larga
		Si (dSeg>dLarga) Entonces
			nLarga <- nombre+' '+cad
			dLarga <- dSeg
		FinSi
		// Comprobamos si es m�s corta que la guardada como m�s corta
		Si (dSeg<dCorta) Entonces
			nCorta <- nombre+' '+cad
			dCorta <- dSeg
		FinSi
		Escribir 'Canci�n ', nombre, ' - ', min, ':', seg
		Escribir '�Desea ingresar otra canci�n? (S/N)'
		Leer opc
	FinMientras
	// Mostramos la canci�n m�s corta
	Escribir 'Canci�n m�s corta: ', nCorta
	// Mostramos la canci�n m�s larga
	Escribir 'Canci�n m�s Larga: ', nLarga
	// Formateamos la duracion en segundos
	dHora <- trunc(dTotal/3600)
	dTotal <- dTotal MOD 3600 // horas en el total de segundos
	dMin <- trunc(dTotal/60) // resto
	dSeg <- dTotal MOD 60 // minutos en el total de segundos
	// Mostramos la duraci�n total de las canciones
	Escribir 'Duraci�n Total de las canciones: ', dHora, ':', dMin, ':', dSeg // resto
FinAlgoritmo
