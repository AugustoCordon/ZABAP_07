CLASS zcl_07_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_iterate IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.
    "Task 1: Calculate the Numbers

    " constant for the number of iterations
    CONSTANTS max_count TYPE i VALUE 20.

    "Declare a simple internal table to store the Fibonacci numbers
    DATA numbers TYPE TABLE OF i.

    "Implement an iteration that is executed max_count times.
    "implement a case distinction based on the built-in iteration counter
    "Add a branch that is executed for all other values. In this branch,
    " calculate the new entry as the sum of the two preceding entries in numbers.

    DO max_count TIMES.


      CASE sy-index.
        WHEN 1.
          APPEND 0 TO numbers.
        WHEN 2.
          APPEND 1 TO numbers.
        WHEN OTHERS.
          APPEND numbers[  sy-index - 2 ]
               + numbers[  sy-index - 1 ]
              TO numbers.
      ENDCASE.

    ENDDO.

    "Task 2: Prepare a Formatted Output
    "In a loop over the internal table, prepare a formatted output that lists each Fibonacci number with its respective sequential number.
    "Prepare the output in another internal table of row type string.

    "Implement a loop over the internal table numbers to read the Fibonacci numbers one by one into a variable number.

    DATA output TYPE TABLE OF string.

    DATA(counter) = 0.
    LOOP AT numbers INTO DATA(number).

*      counter = counter + 1.
      counter += 1.

      APPEND |{ counter WIDTH = 4 ALIGN = LEFT }: { number WIDTH = 10 ALIGN = RIGHT }|
          TO output.

    ENDLOOP.

    "Task 3: Output and Test
    "Write the result to the console. Then activate and test your class as a console app.


    out->write(
           data   = output
           name   = |The first { max_count } Fibonacci Numbers|
                  ) .




  ENDMETHOD.
ENDCLASS.
