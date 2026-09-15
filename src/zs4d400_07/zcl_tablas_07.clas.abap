CLASS zcl_tablas_07 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tablas_07 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    "------------------------------------------------------------
*    " EJEMPLO: Declaramos una variable entera con valor 1234
*    "------------------------------------------------------------
*    DATA number TYPE i VALUE 1234.
*
*
*    "------------------------------------------------------------
*    " Declaramos una tabla interna cuyos registros son enteros
*    "------------------------------------------------------------
*    DATA numbers TYPE TABLE OF i.
*
*
*    "------------------------------------------------------------
*    " Añadimos directamente el valor 4711 a la tabla interna
*    "------------------------------------------------------------
*    APPEND 4711 TO numbers.
*
*
*    "------------------------------------------------------------
*    " Añadimos el contenido de la variable number
*    " number contiene 1234
*    "------------------------------------------------------------
*    APPEND number TO numbers.
*
*
*    "------------------------------------------------------------
*    " ABAP evalúa la expresión 2 * number
*    " 2 * 1234 = 2468
*    " y añade el resultado a la tabla interna
*    "------------------------------------------------------------
*    APPEND 2 * number TO numbers.
*
*
*    "------------------------------------------------------------
*    " Mostramos la variable number por consola
*    " Resultado esperado: 1234
*    "------------------------------------------------------------
*    out->write( |Valor de number: { number }| ).
*
*
*    "------------------------------------------------------------
*    " Mostramos un título antes de visualizar la tabla
*    "------------------------------------------------------------
*    out->write( `Contenido de la tabla numbers:` ).
*
*
*    "------------------------------------------------------------
*    " Mostramos la tabla interna completa por consola
*    "------------------------------------------------------------
*    out->write( numbers ).
*
*
*    "------------------------------------------------------------
*    " CLEAR DE UNA TABLA INTERNA
*    "
*    " CLEAR numbers vacía completamente la tabla interna.
*    " Después de esta instrucción numbers no contiene ninguna fila.
*    "------------------------------------------------------------
*    CLEAR numbers.
*
*
*    "------------------------------------------------------------
*    " Mostramos la tabla después de CLEAR.
*    " La tabla interna numbers está vacía.
*    "------------------------------------------------------------
*    out->write( `Tabla numbers después de CLEAR:` ).
*    out->write( numbers ).
*
*
*    "------------------------------------------------------------
*    " Volvemos a llenar la tabla interna.
*    "
*    " Esto es necesario para nuestro siguiente ejemplo porque
*    " queremos acceder posteriormente a numbers[ 2 ].
*    "------------------------------------------------------------
*    APPEND 4711 TO numbers.
*    APPEND 1234 TO numbers.
*    APPEND 2468 TO numbers.
*
*
*    "------------------------------------------------------------
*    " Mostramos la tabla después de volver a llenarla.
*    "------------------------------------------------------------
*    out->write( `Tabla numbers después de los APPEND:` ).
*    out->write( numbers ).
*
*
*    "------------------------------------------------------------
*    " TABLE EXPRESSION
*    "
*    " Accedemos directamente a la posición 2 de la tabla.
*    "
*    " numbers[ 2 ] devuelve el contenido de la segunda fila.
*    " En nuestro ejemplo esa fila contiene 1234.
*    "------------------------------------------------------------
*    number = numbers[ 2 ].
*
*
*    "------------------------------------------------------------
*    " Mostramos el valor obtenido.
*    " Resultado esperado: 1234
*    "------------------------------------------------------------
*    out->write(
*      |Valor de numbers[ 2 ]: { number }|
*    ).
*
*
*    "------------------------------------------------------------
*    " LOOP AT
*    "
*    " Recorremos todas las filas de la tabla interna numbers.
*    " En cada vuelta del LOOP, el valor de la fila actual
*    " se copia en la variable number.
*    "------------------------------------------------------------
*    out->write( `--- RECORRIDO DE LA TABLA CON LOOP AT ---` ).
*
*    LOOP AT numbers INTO number.
*
*      "----------------------------------------------------------
*      " Mostramos el valor de la fila actual por consola.
*      "----------------------------------------------------------
*      out->write( |{ number }| ).
*
*    ENDLOOP.
*
*
*    "------------------------------------------------------------
*    " LOOP AT ... ASSIGNING
*    "
*    " Recorremos todas las filas de la tabla interna numbers.
*    " En cada vuelta del LOOP, el field symbol <number> apunta
*    " directamente a la fila actual (sin copiarla).
*    "------------------------------------------------------------
*    out->write( `--- RECORRIDO DE LA TABLA CON LOOP AT ... ASSIGNING ---` ).
*
*    LOOP AT numbers ASSIGNING FIELD-SYMBOL(<number>).
*
*      "----------------------------------------------------------
*      " Mostramos el valor de la fila actual por consola.
*      "----------------------------------------------------------
*      out->write( |{ <number> }| ).
*
*    ENDLOOP.
*
**    "NOTA LOOP AT con declaración inline de number
**
**    LOOP AT numbers INTO DATA(number).
**      out->write( |{ number }| ).
**
**    ENDLOOP.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
*    "------------------------------------------------------------
*    " Table Types
*    "------------------------------------------------------------

*    " Creo localmente el tipo de tabla
*    TYPES tt_numbers TYPE TABLE OF i.
*    DATA numbers TYPE tt_numbers.
*
*    " Utilizo un tipo de tabla existente en el Dictionary
*    DATA flights TYPE /dmo/t_flight.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "------------------------------------------------------------
    " Table Types
    "------------------------------------------------------------

* Declarations
**********************************************************************

    " Internal tables
    DATA numbers TYPE TABLE OF i.

    "Table type (local)
    TYPES tt_strings TYPE TABLE OF string.
    DATA texts1      TYPE tt_strings.

    " Table type (global)
    DATA texts2 TYPE string_table.

    " work areas
    DATA number TYPE i VALUE 1234.
    DATA text TYPE string.

* Example 1: APPEND
**********************************************************************

    APPEND 4711       TO numbers.
    APPEND number     TO numbers.
    APPEND 2 * number TO numbers.

*    out->write(  `-----------------` ).
*    out->write(  `Example 1: APPEND` ).
*    out->write(  `-----------------` ).
*
*    out->write( numbers ).

** Example 2: CLEAR
***********************************************************************

    CLEAR numbers.

*    out->write(  `----------------` ).
*    out->write(  `Example 2: CLEAR` ).
*    out->write(  `----------------` ).
*
*    out->write( numbers ).

** Example 3: table expression
***********************************************************************
    APPEND 4711       TO numbers.
    APPEND number     TO numbers.
    APPEND 2 * number TO numbers.

*    out->write(  `---------------------------` ).
*    out->write(  `Example 3: Table Expression` ).
*    out->write(  `---------------------------` ).

    number = numbers[ 2 ] .

*    out->write( |Content of row 2: { number }|    ).
*    "Direct use of expression in string template
*    out->write( |Content of row 1: { numbers[ 1 ]  }| ).

** Example 4: LOOP ... ENDLOOP
***********************************************************************
*    out->write(  `---------------------------` ).
*    out->write(  `Example 4: LOOP ... ENDLOOP` ).
*    out->write(  `---------------------------` ).
*
*    LOOP AT numbers INTO number.
*
*      out->write( |Row { sy-tabix } content: { number }| ).
*
*    ENDLOOP.

** Example 5: Inline declaration in LOOP ... ENDLOOP
***********************************************************************
    out->write(  `-----------------------------` ).
    out->write(  `Example 5: Inline Declaration` ).
    out->write(  `-----------------------------` ).

    LOOP AT numbers INTO DATA(number_inline).
      out->write( |Row: { sy-tabix } Content { number_inline }| ).
    ENDLOOP.




  ENDMETHOD.
ENDCLASS.
