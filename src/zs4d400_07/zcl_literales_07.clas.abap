CLASS zcl_literales_07 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_literales_07 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*=======================================================================
* Ejercicio 1 — Tu primer literal de texto
*=======================================================================
* Muestra directamente en consola el literal de texto 'Hola ABAP'
* utilizando out->write().
*
* SALIDA CONSOLA:
* Hola ABAP



*=======================================================================
* Ejercicio 2 — Literal numérico
*=======================================================================
* Muestra directamente en consola el literal numérico 25
* utilizando out->write().
*
* SALIDA CONSOLA:
* 25


*=======================================================================
* Ejercicio 3 — Varios literales
*=======================================================================
* Muestra directamente en consola tres literales:
* - El texto 'Carlos'
* - El número 30
* - El texto 'Madrid'
* Utiliza una línea de out->write() para cada literal.
*
* SALIDA CONSOLA:
* Carlos
* 30
* Madrid


*=======================================================================
* Ejercicio 4 — Literales dentro de un String Template
*=======================================================================
* Utiliza un String Template para mostrar directamente en consola
* la frase 'Hola, tengo 30 años.'.
*
* SALIDA CONSOLA:
* Hola, tengo 30 años.


*=======================================================================
* Ejercicio 5 — Combinar un literal con una variable
*=======================================================================
* Declara una variable de tipo string para almacenar un nombre.
* Asígnale el valor 'Carlos'.
* Combina la variable con el literal 'Hola' utilizando un String Template.
*
* SALIDA CONSOLA:
* Hola Carlos


*=======================================================================
* Ejercicio 6 — Combinar literales, variables y constantes
*=======================================================================
* Declara una variable de tipo string para almacenar un producto
* y una constante de tipo entero para almacenar el IVA.
* Asigna 'Teclado' al producto y 21 a la constante del IVA.
* Utiliza un String Template para mostrar ambos valores junto con
* los literales necesarios.
*
* SALIDA CONSOLA:
* Producto: Teclado, IVA: 21%


*=======================================================================
* Ejercicio 7 — Diferencia entre literal, variable y constante
*=======================================================================
* Crea un ejemplo que contenga:
* - Un literal de texto con el valor 'Carlos'
* - Una variable de tipo entero con el valor 25
* - Una constante de tipo entero con el valor 18
*
* Muestra los tres valores en consola utilizando out->write().
*
* Identifica después qué elemento es el literal, cuál es la variable
* y cuál es la constante.
*
* SALIDA CONSOLA:
* Carlos
* 25
* 18


*=======================================================================
* Ejercicio 8 — Reto final: literal + variable + constante
*=======================================================================
* Declara dos variables para almacenar el nombre y la edad de un alumno.
* Declara una constante para almacenar el país.
*
* Utiliza:
* - Nombre: Carlos
* - Edad: 30
* - País: España
*
* Combina literales, variables y constantes en un único String Template
* y muestra el resultado mediante out->write().
*
* SALIDA CONSOLA:
* Alumno: Carlos, edad: 30, país: España

**********************************************************************


     ENDMETHOD.
ENDCLASS.
