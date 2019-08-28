SubProceso constructor
	Dimension miDama[10, 10]
	crear(miDama)
	jugar(0, miDama)
FinSubProceso
	
SubProceso crear(miDama)
	miDama[1, 1] <- '-'
	miDama[1, 2] <- 'O'
	miDama[1, 3] <- '-'
	miDama[1, 4] <- 'O'
	miDama[1, 5] <- '-'
	miDama[1, 6] <- 'O'
	miDama[1, 7] <- '-'
	miDama[1, 8] <- 'O'
	miDama[1, 9] <- '-'
	miDama[1, 10] <- 'O'
	
	miDama[2, 1] <- 'O'
	miDama[2, 2] <- '-'
	miDama[2, 3] <- 'O'
	miDama[2, 4] <- '-'
	miDama[2, 5] <- 'O'
	miDama[2, 6] <- '-'
	miDama[2, 7] <- 'O'
	miDama[2, 8] <- '-'
	miDama[2, 9] <- 'O'
	miDama[2, 10] <- '-'
	
	miDama[3, 1] <- '-'
	miDama[3, 2] <- 'O'
	miDama[3, 3] <- '-'
	miDama[3, 4] <- 'O'
	miDama[3, 5] <- '-'
	miDama[3, 6] <- 'O'
	miDama[3, 7] <- '-'
	miDama[3, 8] <- 'O'
	miDama[3, 9] <- '-'
	miDama[3, 10] <- 'O'
	
	miDama[4, 1] <- 'O'
	miDama[4, 2] <- '-'
	miDama[4, 3] <- 'O'
	miDama[4, 4] <- '-'
	miDama[4, 5] <- 'O'
	miDama[4, 6] <- '-'
	miDama[4, 7] <- 'O'
	miDama[4, 8] <- '-'
	miDama[4, 9] <- 'O'
	miDama[4, 10] <- '-'
	
	miDama[5, 1] <- '-'
	miDama[5, 2] <- '-'
	miDama[5, 3] <- '-'
	miDama[5, 4] <- '-'
	miDama[5, 5] <- '-'
	miDama[5, 6] <- '-'
	miDama[5, 7] <- '-'
	miDama[5, 8] <- '-'
	miDama[5, 9] <- '-'
	miDama[5, 10] <- '-'
	
	miDama[6, 1] <- '-'
	miDama[6, 2] <- '-'
	miDama[6, 3] <- '-'
	miDama[6, 4] <- '-'
	miDama[6, 5] <- '-'
	miDama[6, 6] <- '-'
	miDama[6, 7] <- '-'
	miDama[6, 8] <- '-'
	miDama[6, 9] <- '-'
	miDama[6, 10] <- '-'
	
	miDama[7, 1] <- '-'
	miDama[7, 2] <- 'X'
	miDama[7, 3] <- '-'
	miDama[7, 4] <- 'X'
	miDama[7, 5] <- '-'
	miDama[7, 6] <- 'X'
	miDama[7, 7] <- '-'
	miDama[7, 8] <- 'X'
	miDama[7, 9] <- '-'
	miDama[7, 10] <- 'X'
	
	miDama[8, 1] <- 'X'
	miDama[8, 2] <- '-'
	miDama[8, 3] <- 'X'
	miDama[8, 4] <- '-'
	miDama[8, 5] <- 'X'
	miDama[8, 6] <- '-'
	miDama[8, 7] <- 'X'
	miDama[8, 8] <- '-'
	miDama[8, 9] <- 'X'
	miDama[8, 10] <- '-'
	
	miDama[9, 1] <- '-'
	miDama[9, 2] <- 'X'
	miDama[9, 3] <- '-'
	miDama[9, 4] <- 'X'
	miDama[9, 5] <- '-'
	miDama[9, 6] <- 'X'
	miDama[9, 7] <- '-'
	miDama[9, 8] <- 'X'
	miDama[9, 9] <- '-'
	miDama[9, 10] <- 'X'
	
	miDama[10, 1] <- 'X'
	miDama[10, 2] <- '-'
	miDama[10, 3] <- 'X'
	miDama[10, 4] <- '-'
	miDama[10, 5] <- 'X'
	miDama[10, 6] <- '-'
	miDama[10, 7] <- 'X'
	miDama[10, 8] <- '-'
	miDama[10, 9] <- 'X'
	miDama[10, 10] <- '-'
FinSubProceso

SubProceso imprimirTablero(miDama)
	Borrar Pantalla
	Imprimir ""
	Imprimir "    1 2 3 4 5 6 7 8 9 10"
	Imprimir ""
	Para i <- 1 Hasta 10
		Si i Es 10
			Imprimir Sin Saltar i, "  "
		SiNo
			Imprimir Sin Saltar i, "   "
		FinSi
		Para j <- 1 Hasta 10
			Imprimir Sin Saltar miDama[i, j], " "
		FinPara
		Imprimir "  ", i
	FinPara
	Imprimir ""
	Imprimir "    1 2 3 4 5 6 7 8 9 10"
	Imprimir ""
FinSubProceso

SubProceso jugar(cont, miDama)
	imprimirTablero(miDama)
	
	Si cont es cero
		cont <- 1
		Imprimir "Turno de las Blancas (X)"
		seleccionMovimiento('X', miDama)
	SiNo
		cont <- 0
		Imprimir "Turno de las Negras (O)"
		seleccionMovimiento('O', miDama)
	FinSi
	jugar(cont, miDama)	
FinSubProceso

SubProceso seleccionMovimiento(dama, miDama)
	volver <- Verdadero
	
	Mientras volver
		Imprimir "Seleccione la ficha a mover, (Coordenadas X, Y)"
		Leer seleccion

		Si Longitud(seleccion) Es Igual A 2 Y miDama[ConvertirANumero(Subcadena(seleccion, 1, 1)), ConvertirANumero(Subcadena(seleccion, 2, 2))] Es Igual A dama
			bandera <- Falso
			
			Imprimir "Seleccione el lugar a mover, (Coordenadas X, Y)"
			leer movimiento
			
			Si Longitud(movimiento) Es Igual A 2
				Si dama Es Igual A 'X' Y ConvertirANumero(Subcadena(movimiento, 1, 1)) Es Igual A ConvertirANumero(Subcadena(seleccion, 1, 1)) - 1
					dirY <- -1
					inverso <- 'O'
					bandera <- Verdadero
				SiNo Si dama Es Igual A 'O' Y ConvertirANumero(Subcadena(movimiento, 1, 1)) Es Igual A ConvertirANumero(Subcadena(seleccion, 1, 1)) + 1
						dirY <- 1
						inverso <- 'X'
						bandera <- Verdadero
					FinSi
				FinSi
				Si bandera Y miDama[ConvertirANumero(Subcadena(movimiento, 1, 1)), ConvertirANumero(Subcadena(movimiento, 2, 2))] Es Distinto De dama
					Si ConvertirANumero(Subcadena(movimiento, 2, 2)) Es Igual A ConvertirANumero(Subcadena(seleccion, 2, 2)) + 1
						dirX <- 1
					SiNo Si ConvertirANumero(Subcadena(movimiento, 2, 2)) Es Igual A ConvertirANumero(Subcadena(seleccion, 2, 2)) - 1
							dirX <- -1
						FinSi
					FinSi
					volver <- Falso
				SiNo
					error(miDama)
				FinSi
			SiNo
				error(miDama)
			FinSi
		SiNo
			error(miDama)
		FinSi
	FinMientras
	comer(dama, seleccion, movimiento, dirX, dirY, 0, inverso, 0, 0, miDama)
FinSubProceso

SubProceso error(miDama)
	Imprimir "Error al elegir el lugar a mover, vuela a intentarlo..."
	Esperar 1 Segundo
	imprimirTablero(miDama)
FinSubProceso

SubProceso comer(dama, seleccion, movimiento, dirX, dirY, contComidas, inverso, disX, disY, miDama)
	Si ConvertirANumero(Subcadena(movimiento, 2, 2)) + (contComidas * dirX) Es Igual A 10
		disX <- 1
	SiNo Si ConvertirANumero(Subcadena(movimiento, 2, 2)) + (contComidas * dirX) Es Igual A 1
			disX <- -1
		FinSi
	FinSi
	Si ConvertirANumero(Subcadena(movimiento, 1, 1)) + (contComidas * dirY) Es Igual A 10
		disY <- 1
	SiNo Si ConvertirANumero(Subcadena(movimiento, 1, 1)) + (contComidas * dirY) Es Igual A 1
			disY <- -1
		FinSi
	FinSi
	
	Si miDama[ConvertirANumero(Subcadena(movimiento, 1, 1)) + (contComidas * dirY) - disY, ConvertirANumero(Subcadena(movimiento, 2, 2)) + (contComidas * dirX) - disX] Es Igual A inverso
		miDama[ConvertirANumero(Subcadena(movimiento, 1, 1)) + (contComidas * dirY), ConvertirANumero(Subcadena(movimiento, 2, 2)) + (contComidas * dirX)] <- '-'
		contComidas <- contComidas + 1
		comer(dama, seleccion, movimiento, dirX, dirY, contComidas, inverso, disX, disY, miDama)
	SiNo
		miDama[ConvertirANumero(Subcadena(movimiento, 1, 1)) + (contComidas * dirY), ConvertirANumero(Subcadena(movimiento, 2, 2)) + (contComidas * dirX)] <- miDama[ConvertirANumero(Subcadena(seleccion, 1, 1)), ConvertirANumero(Subcadena(seleccion, 2, 2))]
		miDama[ConvertirANumero(Subcadena(seleccion, 1, 1)), ConvertirANumero(Subcadena(seleccion, 2, 2))] <- '-'
		// verificarFinalZona(miDama)
		// verificarFinalCantFicha(miDama)
	FinSi
FinSubProceso

SubProceso verificarFinalZona(miDama)
	contX <- 0
	contO <- 0
	
	Para i <- 1 Hasta 10
		Para j <- 1 Hasta 10
			Si i Es Menor O Igual A 4 Y miDama[i, j] Es Igual A 'X'
				contX <- contX + 1
				Si contX Es Igual A 7
					ganar('X')
				FinSi
			SiNo Si i Es Igual A 5 O i Es Igual A 6
					j <- 10
				SiNo Si miDama[i, j] Es Igual A 'O'
						contO = contO + 1
						Si contO Es Igual A 7
							ganar('O')
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso VerificarFinalCantFicha(miDama)
	contX <- 0
	contO <- 0
	
	Para i <- 1 Hasta 10
		Para j <- 1 Hasta 10
			Si miDama[i, j] Es Igual A 'X'
				contX <- contX + 1
			SiNo Si miDama[i, j] Es Igual A 'O'
					contO <- contO + 1
				FinSi
			FinSi
		FinPara
	FinPara
	
	Si contX Es Menor O Igual A 7
		ganar('O')
	FinSi
	
	Si contO Es Menor O Igual A 7
		ganar('X')
	FinSi
FinSubProceso

SubProceso ganar(dama)
	Imprimir "Ganadoras las fichas ", dama, " felicidades!."
	Esperar 1 Segundo
	
FinSubProceso

Algoritmo Damas
	constructor
FinAlgoritmo
