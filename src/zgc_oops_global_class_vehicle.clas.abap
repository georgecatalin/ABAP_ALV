CLASS zgc_oops_global_class_vehicle DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS display.
  PROTECTED SECTION.
    DATA:  wheels TYPE i,
           brakes TYPE i.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_class_vehicle IMPLEMENTATION.

    METHOD display.
        WRITE: / 'wheels=', wheels, 'brakes=', brakes.
    ENDMETHOD.

ENDCLASS.
