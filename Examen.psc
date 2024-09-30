// Funcion para mostrar el menu
Funcion opcion <- Menu 
	
	
	Escribir ""
	Escribir "-------------------------------- Menu ------------------------------------"
	Escribir ""
	Escribir "Ingrese a la opcion"
	Escribir "Ingrese 1). Para ingresar usuarios"
	Escribir "Ingrese 2). Para asignacion de notas para el usuarios"
	Escribir "Ingrese 3). Para registrar el numero de inassistencias de los usuarios"
	Escribir "Ingrese 4). Para mostrar el listado de todos los usuarios"
	Escribir "Ingrese 5). Para mostrar la nota final de todos los usuarios"
	Escribir "Ingrese 0). Para salir del programa"
	Leer opcion
Fin Funcion

// Funcion para la creacion de usuarios
Funcion persona <- crearPersona(codigo, estudiantes)
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese el codigo del estudiante para el numero ", i
		Leer codigo(i)
		
		Escribir "Ingrese el nombre de estudiantes para el numero ", i
		Leer estudiantes(i)
	Fin Para
FinFuncion

//Funcion para el ingreso de la nota de cada uno de los estudiantes
Funcion persona1 <- ingresaNota (notas)
	para z=1 hasta 10 con paso 1 hacer
		Escribir "------------------------ NOTAS PARA EL ESTUDIANTES ",z,"-----------------------------"
		Escribir "Ingrese la nota 1 que sea entre 1 a 5"
		Leer notas(1,z)
		Escribir "Ingrese la nota 2 que sea entre 1 a 5"
		Leer notas(2,z)
		Escribir "Ingrese la nota 3 que sea entre 1 a 5"
		Leer notas(3,z)
	FinPara
FinFuncion

//Se registra las inasistencias de cada unos de los usuarios
Funcion persona2 <- registrarInansistencias(inasistencias)
	Escribir "Registrar el numero de inasistencias"
	Para j=1 hasta 10 con paso 1 Hacer
		Escribir "Ingrese el numero de inasistencias para ",j
		leer inasistencias(j)
	FinPara
FinFuncion

//Mostrar los estudiantes con el codigo y con el nombre de los estudiantes
Funcion persona3 <- mostrarEst(codigo, estudiantes)
	Escribir "Para mostrar el numero el listado de estudiantes"
	Para k=1 hasta 10 con paso 1 Hacer
		Escribir "El codigo del estudiantes es: ",codigo(k), " el nombre del estudiantes es: ", estudiantes(k)
	FinPara
FinFuncion

//Se muestra el total de los estudiantes
Funcion persona4 <- mostraEstTotal(inasistencias,notaFinal,notas,codigo,estudiantes)
	Escribir "Mostrar el listado de estudiantes"
	Escribir " COD /  NOMBRE  /  P1  /  P2  /  P3  /  INASISTENCIAS  / NOTAFINAL"
	// Calcular la nota FinAlgoritmo
	para h=1 hasta 10 con paso 1 Hacer
		notaFinal(h) = (notas(1,h)+notas(2,h)+notas(3,h))/3
	FinPara
	
	Para g=1 hasta 10 con paso 1 Hacer
		Si (inasistencias(g) >= 10) y (inasistencias(g) < 15) Entonces
			notaFinal(g) = (notaFinal(g) -0.5)
		SiNo Si (inasistencias(g)>=15) entonces
				notaFinal(g) = (notaFinal(g)-1)
			FinSi
		FinSi
	FinPara
	
	// Indicar cada uno de los estudiantes del usuario
	Para f=1 hasta 10 con paso 1 Hacer
		Escribir codigo(f)," / ", estudiantes(f)," / ", notas(1,f)," / ",notas(2,f), " / " ,notas(3,f), " / ",inasistencias(f), " / ",notaFinal(f)
	FinPara
	
FinFuncion


Algoritmo ExamenF
	//Se ingresan todas la dimensiones con las cuales se van  a trabajar
	dimensionar estudiantes(10)
	dimensionar codigo(10)
	dimensionar notas(3, 10)
	dimensionar inasistencias(10)
	dimensionar notaFinal(10)
	
	repetir
		// Se ingresa la primera funcion la cual es la del menu
		opc <- Menu
		
		Segun opc Hacer
			1:
				//Se ingresa a la funcion para crear cada uno de los estudiantes
				usuarioC <- crearPersona(codigo, estudiantes)
			2:
				//Se ingresa a la funcion de ingresar nota para cada uno de los estudiantes sus notas
				usuarioN <- ingresaNota(notas)
			3:
				//Se ingresa a la funcion para ingresar las inasistencias de los usuarios
				usuarioI <- registrarInansistencias(inasistencias)
			4:
				//Se ingresa a la funcion para mostrar el codigo del estudiante y el nombre del estudiantes
				usuarioM <- mostrarEst(codigo, estudiantes)
			5:
				//Se ingresa a la funcion para mostrar todos los datos ingresado previamente por el usuario
				usuarioMT <- mostraEstTotal(inasistencias,notaFinal,notas,codigo,estudiantes)
			0: 
				Escribir "Saliendo...."
			De Otro Modo:
				//Cuando en el menu se seleccion un valor fuera del rango de 0 a 5
				Escribir "La opcion selecionada es incorrecta, seleccione un valor en 0 a 5"
		Fin Segun
	hasta que opc=0
	Escribir "Ha salido del programa"
FinAlgoritmo
