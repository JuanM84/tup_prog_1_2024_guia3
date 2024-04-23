Algoritmo ejercicio2
	Definir min, seg, dSeg, dMin, dHora, dCorta, dLarga, dTotal Como Entero
	Definir nombre, nLarga, nCorta, cad, opc Como Cadena
	// Iniciamos la duración total de las canciones en 0
	dTotal <- 0
	// Solicitamos la primer canción
	Escribir 'Ingrese el Nombre de la canción'
	Leer nombre
	Escribir 'Ingrese la duración de la canción (MM:SS)'
	Leer cad
	// Convertimos el formato texto a la duración total de la canción en segundos 
	min <- ConvertirANumero(Subcadena(cad,0,2))
	seg <- ConvertirANumero(Subcadena(cad,4,5))
	dSeg <- min*60+seg
	// Agregamos la duración de la canción a la canción total
	dTotal <- dTotal+dSeg
	// Asignamos la primer canción como la más larga y la más corta
	nLarga <- nombre+' '+cad
	dLarga <- dSeg
	nCorta <- nombre+' '+cad
	dCorta <- dSeg
	// Continuamos ingresando canciones?
	Escribir '¿Desea ingresar otra canción? (S/N)'
	Leer opc
	Mientras (opc=='S' O opc=='s') Hacer
		Escribir 'Ingrese el Nombre de la canción'
		Leer nombre
		Escribir 'Ingrese la duración de la canción (MM:SS)'
		Leer cad
		// Convertimos el formato texto a la duración total de la canción en segundos 
		min <- ConvertirANumero(Subcadena(cad,0,2))
		seg <- ConvertirANumero(Subcadena(cad,4,5))
		dSeg <- min*60+seg
		// Agregamos la duración de la canción a la canción total
		dTotal <- dTotal+dSeg
		// Comprobamos si es más larga que la guardada como más larga
		Si (dSeg>dLarga) Entonces
			nLarga <- nombre+' '+cad
			dLarga <- dSeg
		FinSi
		// Comprobamos si es más corta que la guardada como más corta
		Si (dSeg<dCorta) Entonces
			nCorta <- nombre+' '+cad
			dCorta <- dSeg
		FinSi
		Escribir 'Canción ', nombre, ' - ', min, ':', seg
		Escribir '¿Desea ingresar otra canción? (S/N)'
		Leer opc
	FinMientras
	// Mostramos la canción más corta
	Escribir 'Canción más corta: ', nCorta
	// Mostramos la canción más larga
	Escribir 'Canción más Larga: ', nLarga
	// Formateamos la duracion en segundos
	dHora <- trunc(dTotal/3600)
	dTotal <- dTotal MOD 3600 // horas en el total de segundos
	dMin <- trunc(dTotal/60) // resto
	dSeg <- dTotal MOD 60 // minutos en el total de segundos
	// Mostramos la duración total de las canciones
	Escribir 'Duración Total de las canciones: ', dHora, ':', dMin, ':', dSeg // resto
FinAlgoritmo
