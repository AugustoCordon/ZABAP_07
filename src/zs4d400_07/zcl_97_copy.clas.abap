CLASS zcl_97_copy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_97_COPY IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS Z97FLIGHT TYPE tabname VALUE 'Z97FLIGHT'.

    TRY.
        DATA(copier) = NEW lcl_copy_data( Z97FLIGHT ).
        copier->copy_data( ).

        out->write( |{ Z97FLIGHT } was filled with data| ).

      CATCH cx_abap_not_a_table.

        out->write( |{ Z97FLIGHT } is not a table of the right type.| ).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
