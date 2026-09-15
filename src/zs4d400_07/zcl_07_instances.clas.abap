CLASS zcl_07_instances DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_instances IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA connection TYPE REF TO lcl_connection.

    connection = new #(  ).

    connection->carrier_id    = 'LH'.
    connection->connection_id = '0400'.



  ENDMETHOD.
ENDCLASS.
