Algoritmo ejercicio3
	Definir codLote, cantLotes, menorLote, mayorLote Como Entero
	Definir medida, medEsp, porcLote, errorLote, porcTotal, porcMenor, porcMayor Como Real
	cantLotes <- 0
	porcTotal <- 0
	// Primer Lote
	Escribir 'Ingrese el codigo del Lote: (0 para finalizar)'
	Leer codLote
	menorLote <- codLote
	mayorLote <- codLote
	porcMenor <- 0
	porcMayor <- 0
	Mientras (codLote<>0) Hacer
		// Solicitamos la medida del lote
		Escribir 'Ingrese la medida para el Lote: (0 para finalizar)'
		Leer medEsp
		porcLote <- 0
		errorLote <- 0
		cantLotes <- cantLotes+1
		// Solicitamos las 10 medidas
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			errorMed <- 0
			Escribir 'Ingrese la ', i, '# medida en (mm)'
			Leer medida
			errorMed <- abs(medida-medEsp)
			// Corroboramos que hay error
			Si (errorMed<>0) Entonces
				porcLote <- porcLote+1
				Si errorMed>errorLote Entonces
					errorLote <- errorMed
				FinSi
			FinSi
		FinPara
		// Información del lote procesado
		Escribir '-- INFORME LOTE --'
		Escribir 'Porcentaje de Error: ', (porcLote*10), '%'
		Escribir 'Mayor de Error Absoluto: ', errorLote, 'mm'
		porcTotal <- (porcLote+porcTotal)
		// Comprobamos si es el lote con menor porcentaje de fallas
		Si (porcLote<porcMenor) Entonces
			porcMenor <- porcLote
			menorLote <- codLote
		FinSi
		// Comprobamos si es el lote con mayor porcentaje de fallas
		Si (porcLote>porcMayor) Entonces
			porcMayor <- porcLote
			mayorLote <- codLote
		FinSi
		// Siguiente Lote
		Escribir 'Ingrese el codigo del Lote: '
		Leer codLote
	FinMientras
	// Calculamos el porcentaje total de Fallas
	porcTotal <- porcTotal/cantLotes
	// Información de todos los lotes
	Escribir '-- INFORME FINAL --'
	Escribir 'Cantidad de Lotes procesados: ', cantLotes, ' lotes'
	Escribir 'Porcentaje de Total de Fallas: ', (porcTotal*10), '%'
	Escribir 'Lote con mayor cantidad de Fallas: N° ', mayorLote
	Escribir 'Lote con menor cantidad de Fallas: N° ', menorLote
FinAlgoritmo
