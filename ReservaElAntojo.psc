Algoritmo ReservaElAntojo
	
    Definir capacidadMaxima Como Entero
    Definir reservasRealizadas Como Entero
    Dimension  asientosDisponibles[6, 2] // Matriz para almacenar disponibilidad por d�a y horario
	
    capacidadMaxima <- 50 // Capacidad m�xima del restaurante
    reservasRealizadas <- 0 // Inicializar el contador de reservas
    
    // Inicializar la disponibilidad de asientos para cada d�a y horario
    Para dia <- 1 Hasta 6 Hacer
        Para horario <- 1 Hasta 2 Hacer
            asientosDisponibles[dia, horario] <- capacidadMaxima
        FinPara
    FinPara
    
    // Bucle principal del programa
    Repetir
        Escribir "Bienvenido al sistema de reservas del restaurante."
		Escribir  " "
        Escribir "D�as de la semana: 1. Lunes, 2. Martes, 3. Mi�rcoles, 4. Jueves, 5. Viernes, 6. S�bado"
        Escribir " "
		Esperar 1 Segundo        
        Escribir "Por favor, ingrese el n�mero del d�a de la semana (1 a 6):"
        Leer diaSemana
        
        Si diaSemana < 1 O diaSemana > 6 Entonces
            Escribir "D�a inv�lido. Por favor, ingrese un d�a v�lido."
           
        FinSi
		
        Escribir "Horarios disponibles: 1. Almuerzo, 2. Cena"
		Escribir " "
		Esperar 1 segundo
        Escribir "Por favor, elija el horario (1 para Almuerzo, 2 para Cena):"
        Leer horario
        
        Si horario < 1 O horario > 2 Entonces
            Escribir "Horario inv�lido. Por favor, ingrese un horario v�lido."
            
        FinSi
        
        asientosDisponiblesDiaHorario <- asientosDisponibles[diaSemana, horario]
        Escribir "Asientos disponibles para el d�a y horario:", asientosDisponiblesDiaHorario
        
        Si asientosDisponiblesDiaHorario <= 0 Entonces
            Escribir "Lo sentimos, no hay asientos disponibles para este d�a y horario."
        FinSi
        
        Escribir "Por favor, ingrese la cantidad de asientos que desea reservar:"
        Leer cantidadReserva
        
        Si cantidadReserva <= 0 O cantidadReserva > asientosDisponiblesDiaHorario Entonces
            Escribir "Cantidad inv�lida. Por favor, ingrese una cantidad v�lida."
        FinSi
        
        asientosDisponibles[diaSemana, horario] <- asientosDisponiblesDiaHorario - cantidadReserva
        reservasRealizadas <- reservasRealizadas + cantidadReserva
        
        Escribir "Reserva exitosa. Gracias por elegir nuestro restaurante."
        
        Escribir "�Desea hacer otra reserva? (1. S� / 2. No):"
        Leer respuesta
        Si respuesta = "1" Entonces
            
        FinSi
		
    Hasta Que respuesta = "2" // El bucle se ejecuta indefinidamente hasta que se salga manualmente

FinAlgoritmo