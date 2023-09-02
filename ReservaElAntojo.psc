Algoritmo ReservaElAntojo
	
    Definir capacidadMaxima Como Entero
    Definir reservasRealizadas Como Entero
    Dimension  asientosDisponibles[6, 2] // Matriz para almacenar disponibilidad por día y horario
	
    capacidadMaxima <- 50 // Capacidad máxima del restaurante
    reservasRealizadas <- 0 // Inicializar el contador de reservas
    
    // Inicializar la disponibilidad de asientos para cada día y horario
    Para dia <- 1 Hasta 6 Hacer
        Para horario <- 1 Hasta 2 Hacer
            asientosDisponibles[dia, horario] <- capacidadMaxima
        FinPara
    FinPara
    
    // Bucle principal del programa
    Repetir
        Escribir "Bienvenido al sistema de reservas del restaurante."
		Escribir  " "
        Escribir "Días de la semana: 1. Lunes, 2. Martes, 3. Miércoles, 4. Jueves, 5. Viernes, 6. Sábado"
        Escribir " "
		Esperar 1 Segundo        
        Escribir "Por favor, ingrese el número del día de la semana (1 a 6):"
        Leer diaSemana
        
        Si diaSemana < 1 O diaSemana > 6 Entonces
            Escribir "Día inválido. Por favor, ingrese un día válido."
           
        FinSi
		
        Escribir "Horarios disponibles: 1. Almuerzo, 2. Cena"
		Escribir " "
		Esperar 1 segundo
        Escribir "Por favor, elija el horario (1 para Almuerzo, 2 para Cena):"
        Leer horario
        
        Si horario < 1 O horario > 2 Entonces
            Escribir "Horario inválido. Por favor, ingrese un horario válido."
            
        FinSi
        
        asientosDisponiblesDiaHorario <- asientosDisponibles[diaSemana, horario]
        Escribir "Asientos disponibles para el día y horario:", asientosDisponiblesDiaHorario
        
        Si asientosDisponiblesDiaHorario <= 0 Entonces
            Escribir "Lo sentimos, no hay asientos disponibles para este día y horario."
        FinSi
        
        Escribir "Por favor, ingrese la cantidad de asientos que desea reservar:"
        Leer cantidadReserva
        
        Si cantidadReserva <= 0 O cantidadReserva > asientosDisponiblesDiaHorario Entonces
            Escribir "Cantidad inválida. Por favor, ingrese una cantidad válida."
        FinSi
        
        asientosDisponibles[diaSemana, horario] <- asientosDisponiblesDiaHorario - cantidadReserva
        reservasRealizadas <- reservasRealizadas + cantidadReserva
        
        Escribir "Reserva exitosa. Gracias por elegir nuestro restaurante."
        
        Escribir "¿Desea hacer otra reserva? (1. Sí / 2. No):"
        Leer respuesta
        Si respuesta = "1" Entonces
            
        FinSi
		
    Hasta Que respuesta = "2" // El bucle se ejecuta indefinidamente hasta que se salga manualmente

FinAlgoritmo