Algoritmo Sistema_Ordenamiento
	
    Definir n, i, j, temp, opcion Como Entero
    Definir p, im Como Entero
    Dimension arreglo[100]
    Dimension pares[100], impares[100]
	
    Escribir Sin Saltar "Ingrese el tamaño del arreglo: "
    Leer n
	
    Escribir "Ingrese ", n, " números:"
    Para i <- 1 Hasta n Hacer
        Leer arreglo[i]
    FinPara
	
    Repetir
        Limpiar Pantalla
        Escribir "=== ARREGLO ACTUAL ==="
        Para i <- 1 Hasta n Hacer
            Escribir Sin Saltar arreglo[i], " "
        FinPara
        Escribir ""
		
        Escribir "1. Ordenar de menor a mayor"
        Escribir "2. Ordenar de mayor a menor"
        Escribir "3. Pares al inicio, impares al final"
        Escribir "4. Salir"
        Escribir Sin Saltar "Elige una opción: "
        Leer opcion
		
        Segun opcion Hacer
            1:
                Para i <- 1 Hasta n-1 Hacer
                    Para j <- 1 Hasta n-i Hacer
                        Si arreglo[j] > arreglo[j+1] Entonces
                            temp <- arreglo[j]
                            arreglo[j] <- arreglo[j+1]
                            arreglo[j+1] <- temp
                        FinSi
                    FinPara
                FinPara
                Escribir "Ordenado de menor a mayor:"
                Para i <- 1 Hasta n Hacer
                    Escribir Sin Saltar arreglo[i], " "
					Escribir ""
                FinPara
				
            2:
                Para i <- 1 Hasta n-1 Hacer
                    Para j <- 1 Hasta n-i Hacer
                        Si arreglo[j] < arreglo[j+1] Entonces
                            temp <- arreglo[j]
                            arreglo[j] <- arreglo[j+1]
                            arreglo[j+1] <- temp
                        FinSi
                    FinPara
                FinPara
                Escribir "Ordenado de mayor a menor:"
                Para i <- 1 Hasta n Hacer
                    Escribir Sin Saltar arreglo[i], " "
                FinPara
                Escribir ""
				
            3:
                p <- 0
                im <- 0
				
                Para i <- 1 Hasta n Hacer
                    Si arreglo[i] MOD 2 = 0 Entonces
                        p <- p + 1
                        pares[p] <- arreglo[i]
                    Sino
                        im <- im + 1
                        impares[im] <- arreglo[i]
                    FinSi
                FinPara
				
                Para i <- 1 Hasta p-1 Hacer
                    Para j <- 1 Hasta p-i Hacer
                        Si pares[j] > pares[j+1] Entonces
                            temp <- pares[j]
                            pares[j] <- pares[j+1]
                            pares[j+1] <- temp
                        FinSi
                    FinPara
                FinPara
				
                Para i <- 1 Hasta im-1 Hacer
                    Para j <- 1 Hasta im-i Hacer
                        Si impares[j] > impares[j+1] Entonces
                            temp <- impares[j]
                            impares[j] <- impares[j+1]
                            impares[j+1] <- temp
                        FinSi
                    FinPara
                FinPara
				
                i <- 1
                Para j <- 1 Hasta p Hacer
                    arreglo[i] <- pares[j]
                    i <- i + 1
                FinPara
                Para j <- 1 Hasta im Hacer
                    arreglo[i] <- impares[j]
                    i <- i + 1
                FinPara
				
                Escribir "Pares al inicio, impares al final:"
                Para i <- 1 Hasta n Hacer
                    Escribir Sin Saltar arreglo[i], " "
                FinPara
                Escribir ""
				
            4:
                Escribir "¡Chau! Gracias por usar el programa"
				
            De Otro Modo:
                Escribir "Opción inválida"
        FinSegun
		
        Escribir "Presiona Enter para continuar..."
        Leer temp
		
    Hasta Que opcion = 4
	
FinAlgoritmo