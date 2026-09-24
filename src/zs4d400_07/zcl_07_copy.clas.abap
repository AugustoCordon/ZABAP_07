CLASS zcl_07_copy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_07_COPY IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS Z07FLIGHT TYPE tabname VALUE 'Z07FLIGHT'.

    TRY.
        DATA(copier) = NEW lcl_copy_data( Z07FLIGHT ).
        copier->copy_data( ).

        out->write( |{ Z07FLIGHT } was filled with data| ).

      CATCH cx_abap_not_a_table.

        out->write( |{ Z07FLIGHT } is not a table of the right type.| ).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
