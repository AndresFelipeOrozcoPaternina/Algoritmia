Algoritmo propinas
    Definir cuenta, porcentaje, propina, total, porPersona Como Real;
    Definir personas Como Entero;
    Escribir "¿Cuánto vale la cuenta?";
    Leer cuenta;
    Escribir "¿Qué porcentaje de propina quieres dejar?";
    Leer porcentaje;
    Escribir "¿Entre cuántas personas se divide?";
    Leer personas;
    propina <- cuenta * porcentaje / 100;
    total <- cuenta + propina;
    porPersona <- total / personas;
    Escribir "Cada uno paga: $", porPersona;
FinAlgoritmo
