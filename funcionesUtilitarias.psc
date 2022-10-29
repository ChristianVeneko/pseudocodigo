Funcion datoCaracter = capturarDatoChar(mensaje)
	Definir datoCaracter como Caracter
	Mostrar mensaje ": " Sin Saltar
	Leer datoCaracter
FinFuncion
Funcion datoNum = capturarDatoNum(mensaje)
	Definir datoNum como Real
	Mostrar mensaje ": " Sin Saltar
	Leer datoNum
FinFuncion
Funcion datoLog = capturarDatoLog(mensaje)
	Definir datoLog como Logico
	Mostrar mensaje ": " Sin Saltar
	Leer datoLog
FinFuncion
Funcion promedio = calcularPromedio(acum, cont)
	Definir promedio como Real
	Si cont <> 0
		promedio = acum / cont
	SiNo
		Mostrar "No se puede calcular con un contador igual a  cero (0)"
		promedio = 0
	FinSi
FinFuncion
Funcion porcentaje = calcularPorcentajeProporcional(contEsp, contGen)
	Definir porcentaje como Real
	Si contGen <> 0
		porcentaje = contEsp / contGen * 100
	SiNo
		Mostrar "No se puede calcular con un contador general igual a cero (0)"
		porcentaje = 0
	FinSi
FinFuncion
Funcion dato = pedirDatoNumRango(mensaje, min, max)
	Definir dato como Real
	Mostrar mensaje
	Mostrar "Ingrese el dato requerido en el rango de [" min " a " max "]"
	Repetir
		Leer dato
		Si (!(dato >= min Y dato <= max))
			Mostrar "El dato debe estar en el rango de [" min "-" max "]"
		FinSi
	Hasta Que (dato >= min Y dato <= max)
FinFuncion
Funcion dato = pedirDatoCharDual(mensaje, opc1, opc2)
	Definir dato Como Caracter
	opc1 = Mayusculas(opc1)
	opc2 = Mayusculas(opc2)
	Mostrar mensaje
	Mostrar "Ingrese el dato requerido: [" opc1 " O " opc2 "]"
	Repetir
		leer dato
		dato =  Mayusculas(dato)
	Hasta Que (dato = opc1 O dato = opc2)
FinFuncion
Funcion validador=validarNumsMinMax(min, max)
	Definir validador como Logico
	Si min < max
		validador = Verdadero
	SiNo
		validador = falso
	FinSi
FinFuncion
Funcion dato=validarNumPositivo(mensaje)
	Definir dato como Real
	Repetir
		Mostrar mensaje
		Leer dato
		Si dato < 0
			Mostrar "El dato requerido debe ser positivo"
		FinSi
		Si dato = 0
			Mostrar "El dato requerido no debe ser cero"
		FinSi
	Hasta Que dato > 0
FinFuncion
Funcion dato=solicitarCadenaDicotomica(mensaje, cadena1, cadena2)
	Definir dato Como Caracter
	cadena1 = Mayusculas(cadena1)
	cadena2 = Mayusculas(cadena2)
	Repetir
		Mostrar mensaje ": " Sin Saltar
		leer dato
		dato = Mayusculas(dato)
		Si !(dato = cadena1 O dato = cadena2)
			Mostrar "Error!"
			Mostrar "El dato requerido debe ser o " cadena1 " o " cadena2
		FinSi
	Hasta Que (dato = cadena1 O dato = cadena2)
FinFuncion
funcion encontrado=buscarEnArregloCaracterQueNoExista(datoABuscar, tamanoArreglo, arreglo)
	Definir k Como Entero
	Definir encontrado Como Logico
	encontrado = Falso
	k=1
	Repetir
		Si datoABuscar = arreglo(k)
			encontrado = Verdadero
		FinSi
		k = k + 1
	Hasta Que encontrado = Verdadero O k>tamanoArreglo
	Si encontrado = Verdadero
		Mostrar "El dato a buscar ya existe en el arreglo!"
	FinSi
FinFuncion

//potenciar un numero
funcion potencia = potenciarUnNumero(n)
	definir potencia Como Real
	segun n
		0:factorial=1
		De Otro Modo:
			factorial= 2*potenciarUnNumero(n-1)
	FinSegun
FinFuncion

Algoritmo Funciones_O_Modulos_Utilitarios
	
FinAlgoritmo
