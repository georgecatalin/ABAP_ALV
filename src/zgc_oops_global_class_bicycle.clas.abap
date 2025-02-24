CLASS zgc_oops_global_class_bicycle DEFINITION
  PUBLIC
  INHERITING FROM zgc_oops_global_class_cycle
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: setbicycle,
             display REDEFINITION.
  PROTECTED SECTION.
    DATA gears TYPE i.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_class_bicycle IMPLEMENTATION.

METHOD setbicycle.
    wheels = 2.
    brakes = 2.
    color = 'red'.
    gears = 5.
ENDMETHOD.

METHOD display.
    WRITE: / 'overriding the method display.'.
    WRITE: / 'wheels=',  wheels, 'brakes=', brakes, 'color=', color, 'gears=', gears.
ENDMETHOD.

ENDCLASS.
