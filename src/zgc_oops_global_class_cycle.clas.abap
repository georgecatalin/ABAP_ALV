CLASS zgc_oops_global_class_cycle DEFINITION
  PUBLIC
  INHERITING FROM zgc_oops_global_class_vehicle
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS setcycle.
  PROTECTED SECTION.
    DATA color(10) TYPE C.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_class_cycle IMPLEMENTATION.

METHOD setcycle.
    wheels = 2.
    brakes = 1.
    color = 'black'.
ENDMETHOD.


ENDCLASS.
