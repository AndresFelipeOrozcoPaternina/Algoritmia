# Algoritmia

Ejercicios en PSeInt.

## Semana 1

- Saludo.
- Edad en días.
- Propinas.
- Promedio de tres notas.

En `semana1` también están los pasos para preparar un tinto y la carpeta `diagramas`.

Para ejecutar un ejercicio, abre su archivo `.psc` en PSeInt y pulsa Ejecutar.

## Semana 2

Ejercicios de condiciones en PSeInt. Abre el archivo `.psc` y pulsa Ejecutar.

Las tablas muestran lo que debe salir al ingresar cada dato. Son pruebas de escritorio, revisadas siguiendo los pasos del código; no se han ejecutado en PSeInt.

### 1. Validar registro

Puedes registrarte si tienes 14 años o más y aceptas los términos. La respuesta puede ser S o s.

#### Tabla de verdad

| ¿Tiene 14 años o más? | ¿Acepta los términos? | ¿Puede registrarse? |
| --- | --- | --- |
| Sí | Sí | Sí |
| Sí | No | No |
| No | Sí | No |
| No | No | No |

#### Pruebas

| Edad | Respuesta | Lo que debe salir |
| --- | --- | --- |
| 14 | S | Registro exitoso |
| 13 | S | No puedes registrarte |
| 30 | n | No puedes registrarte |
| 14 | s | Registro exitoso |

Con 14 años ya puedes registrarte. El programa pasa la respuesta a mayúscula, por eso s también sirve.

### 2. Validar edad

La edad debe estar entre 0 y 120, incluyendo esos dos números. Está mal si es menor que 0 o mayor que 120. Así se aplica la ley de De Morgan.

| Edad | Lo que debe salir |
| --- | --- |
| -1 | Edad inválida |
| 0 | Edad válida |
| 120 | Edad válida |
| 121 | Edad inválida |

### 3. Parqueadero

El carro cuesta $4.000 por hora y la moto $2.000. Hasta 15 minutos es gratis. Si pasa de ese tiempo, se cobra desde la primera hora y una hora empezada cuenta completa. El cobro llega hasta $30.000; después, si hay factura, se paga la mitad.

#### Tabla de decisiones

| Lo que pasa | Lo que hace el programa |
| --- | --- |
| Los minutos son negativos | Muestra que los minutos no pueden ser negativos |
| Los minutos están bien, pero el tipo no es 1 ni 2 | Muestra que el tipo de vehículo no es válido |
| Es carro o moto y estuvo de 0 a 15 minutos | No cobra |
| Es carro o moto, pasó de 15 minutos y no tiene factura | Cobra las horas, hasta $30.000 |
| Es carro o moto, pasó de 15 minutos y tiene factura | Calcula el cobro con el tope y luego lo divide entre 2 |

#### Pruebas de escritorio

| Caso | Vehículo | Minutos | Factura | Cuenta | Debe pagar |
| --- | --- | --- | --- | --- | --- |
| 4 | Carro (1) | 61 | N | 2 horas × $4.000 | $8.000 |
| 5 | Moto (2) | 61 | S | 2 horas × $2.000, dividido entre 2 | $2.000 |
| 7 | Carro (1) | 600 | S | 10 horas × $4.000 = $40.000; baja a $30.000 y se divide entre 2 | $15.000 |

#### Otras pruebas

| Tipo | Minutos | Factura | Lo que debe salir |
| --- | --- | --- | --- |
| 1 | -1 | N | Los minutos no pueden ser negativos |
| 3 | 60 | N | Tipo de vehículo no válido |
| 1 | 0 | N | Valor a pagar: $0 |
| 1 | 15 | N | Valor a pagar: $0 |
| 1 | 16 | N | Valor a pagar: $4000 |
| 1 | 60 | N | Valor a pagar: $4000 |
| 1 | 600 | N | Valor a pagar: $30000 |

### 4. Semáforo

El color indica si hay productos o si toca pedir más.

| Cantidad | Lo que debe salir |
| --- | --- |
| Menos de 0 | Error: las unidades no pueden ser negativas |
| 0 | Rojo: agotado |
| De 1 a 10 | Amarillo: hay que pedir |
| Más de 10 | Verde: todo bien |

#### Pruebas

| Cantidad | Lo que debe salir |
| --- | --- |
| -1 | Error: las unidades no pueden ser negativas |
| 0 | Rojo: agotado |
| 1 | Amarillo: hay que pedir |
| 10 | Amarillo: hay que pedir |
| 11 | Verde: todo bien |

### 5. Año bisiesto

Un año es bisiesto si se divide exactamente entre 4, pero no entre 100. Si se divide exactamente entre 400, también es bisiesto.

#### Tabla y pruebas

| Año | ¿Divide entre 4 sin sobrar? | ¿Entre 100? | ¿Entre 400? | Lo que debe salir |
| --- | --- | --- | --- | --- |
| 2024 | Sí | No | No | 2024 es bisiesto |
| 1900 | Sí | Sí | No | 1900 no es bisiesto |
| 2000 | Sí | Sí | Sí | 2000 es bisiesto |
| 2026 | No | No | No | 2026 no es bisiesto |

## Semana 3

Ejercicios con ciclos y subprocesos. Los archivos están en `semana3`. Las pruebas de abajo muestran lo que debe salir al seguir el código; falta ejecutarlas en PSeInt.

### 1. Validar PIN

`ValidarPIN.psc` pide el PIN y da hasta 3 intentos. El PIN correcto es 2580.

| Datos que ingresas | Lo que debe salir |
| --- | --- |
| 2580 | Bienvenido |
| 1111, 2580 | Bienvenido |
| 1111, 2222, 2580 | Bienvenido |
| 1111, 2222, 3333 | Tarjeta bloqueada |

Si aciertas, deja de pedir el PIN. Si fallas tres veces, bloquea la tarjeta.

### 2. Cajero del parqueadero

`CajeroParqueadero.psc` suma los cobros y cuenta los carros. Al ingresar 0, cierra la caja. Ese 0 no cuenta como carro.

#### Tabla paso a paso

Prueba: 4000, 8000, 2000 y 0.

| Paso | Cobro ingresado | Dinero reunido | Carros atendidos |
| --- | --- | --- | --- |
| Inicio | — | 0 | 0 |
| 1 | 4000 | 4000 | 1 |
| 2 | 8000 | 12000 | 2 |
| 3 | 2000 | 14000 | 3 |
| Cierre | 0 | 14000 | 3 |

Debe salir: 3 carros atendidos y $14000 recaudados. Si ingresas 0 desde el comienzo, salen 0 carros y $0.

### 3. Calificaciones

`Calificaciones.psc` pide las notas de 5 estudiantes, de 0 a 5. Calcula el promedio, cuenta los que pasan con 3 o más y busca la nota más alta y la más baja. También avisa si alguien perdió.

| Notas ingresadas | Promedio | Pasaron | Más alta | Más baja | Aviso de refuerzo |
| --- | --- | --- | --- | --- | --- |
| 3.5, 2.8, 4.9, 3.0, 4.2 | 3.68 | 4 | 4.9 | 2.8 | Sí |

### 4. Pirámide

`Piramide.psc` pide una altura y dibuja la pirámide con espacios y asteriscos. Usa una altura entera mayor que cero.

#### Tabla paso a paso para altura 4

| Fila | Espacios al comienzo | Asteriscos |
| --- | --- | --- |
| 1 | 3 | 1 |
| 2 | 2 | 3 |
| 3 | 1 | 5 |
| 4 | 0 | 7 |

Con altura 1 debe salir:

```text
*
```

Con altura 4 debe salir:

```text
   *
  ***
 *****
*******
```

Con altura 6 debe salir:

```text
     *
    ***
   *****
  *******
 *********
***********
```

### 5. Factura del restaurante

`FacturaRestaurante.psc` suma los precios de los platos hasta que ingresas 0. Luego calcula el 8% de impuesto y el 10% de propina sobre el subtotal.

El programa se divide en tres partes: leer el pedido, calcular un porcentaje y mostrar la factura. La misma parte que calcula el porcentaje sirve para el impuesto y la propina.

Prueba: 25000, 25000, 12000 y 0.

| Cuenta | Resultado |
| --- | --- |
| Subtotal: 25000 + 25000 + 12000 | $62000 |
| Impuesto: 62000 × 8 / 100 | $4960 |
| Propina: 62000 × 10 / 100 | $6200 |
| Total: 62000 + 4960 + 6200 | $73160 |

### Partes de una tienda en línea

Este árbol muestra cómo se puede dividir una página. La tarjeta del producto se repite por cada producto de la tienda.

```text
Tienda en línea
├── Encabezado
│   ├── Logo
│   ├── Buscador
│   ├── Menú de categorías
│   └── Carrito
├── Contenido principal
│   ├── Anuncio de ofertas
│   └── Lista de productos
│       └── Tarjeta de producto (se repite)
│           ├── Imagen
│           ├── Nombre y descripción
│           ├── Precio
│           └── Botón para agregar al carrito
└── Pie de página
    ├── Ayuda
    ├── Redes sociales
    └── Derechos de autor
```
