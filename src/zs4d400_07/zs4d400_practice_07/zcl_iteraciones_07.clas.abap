CLASS zcl_iteraciones_07 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_iteraciones_07 IMPLEMENTATION.






  METHOD if_oo_adt_classrun~main.


**    "=======================================================================
**    " EJEMPLO 1 - DO ... TIMES
**    " Número especificado de iteraciones
**    " Contador implícito: sy-index
**    "=======================================================================
**
**    DO 5 TIMES.
**
**      out->write( |Iteración número: { sy-index }| ).
**
**    ENDDO.
**
*
*    "=======================================================================
*    " EJEMPLO 2 - DO ... EXIT ... ENDDO
*    " Cancelación basada en una condición lógica
*    " Contador implícito: sy-index
*    "=======================================================================
*
*    DO.
*
*      out->write( |Iteración número: { sy-index }| ).
*
*      IF sy-index = 5.
*        EXIT.
*      ENDIF.
*
*    ENDDO.
*
*
**    "=======================================================================
**    " EJEMPLO 3 - LOOP AT ... INTO ... ENDLOOP
**    " Iteración basada en el contenido de una tabla interna
**    " Contador/índice implícito: sy-tabix
**    "=======================================================================
**
**    DATA numbers TYPE TABLE OF i.
**
**    APPEND 10 TO numbers.
**    APPEND 20 TO numbers.
**    APPEND 30 TO numbers.
**
**    DATA number TYPE i.
**
**    LOOP AT numbers INTO number.
**
**      out->write( |Fila: { sy-tabix } - Valor: { number }| ).
**
**    ENDLOOP.


* Declarations
**********************************************************************

    CONSTANTS c_number TYPE i VALUE 3.
*    CONSTANTS c_number TYPE i VALUE 5.
*    CONSTANTS c_number TYPE i VALUE 10.

    DATA number TYPE i.

* Example 1: DO ... ENDDO with TIMES
**********************************************************************

*    out->write(  `----------------------------------` ).
*    out->write(  `Example 1: DO ... ENDDO with TIMES` ).
*    out->write(  `----------------------------------` ).
*
*    DO c_number TIMES.
*      out->write(  `Hello World` ).
*    ENDDO.

* Example 2: DO ... ENDDO with Abort Condition
**********************************************************************

    out->write(  `-------------------------------` ).
    out->write(  `Example 2: With Abort Condition` ).
    out->write(  `-------------------------------` ).

    number = c_number * c_number.

    " count backwards from number to c_number.
    DO.

      out->write( |{ sy-index }: Value of number: {  number }| ).
      number = number - 1.

      "abort condition
      IF number <= c_number.
        EXIT.
      ENDIF.

    ENDDO.





  ENDMETHOD.
ENDCLASS.
