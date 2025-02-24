*&---------------------------------------------------------------------*
*& Report zgc_oops_multilvl_inheritance
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_multilvl_inheritance.

CLASS lcl_vehicle DEFINITION.
  PUBLIC SECTION.
    METHODS display.
  PROTECTED SECTION.
    DATA: wheels TYPE i,
          brakes TYPE i.
ENDCLASS.

CLASS lcl_vehicle IMPLEMENTATION.

  METHOD display.
    WRITE: / 'Wheels = ', wheels, 'brakes = ', brakes.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_cycle DEFINITION INHERITING FROM lcl_vehicle. " single level inheritance here
  PUBLIC SECTION.
    METHODS setcycle.
  PROTECTED SECTION.
    DATA color(10) TYPE c.
ENDCLASS.

CLASS lcl_cycle IMPLEMENTATION.

METHOD setcycle.
    wheels = 4.
    brakes = 2.
    color = 'red'.
ENDMETHOD.

ENDCLASS.


CLASS lcl_bicyle DEFINITION INHERITING FROM lcl_cycle. " multilevel inheritance here
    PUBLIC SECTION.
        METHODS: setbike,
                 display REDEFINITION.
    PROTECTED SECTION.
        DATA gears TYPE i.

ENDCLASS.


CLASS lcl_bicyle IMPLEMENTATION.

METHOD setbike.
    wheels = 2.
    brakes = 1.
    color = 'green'.
    gears = 10.
ENDMETHOD.

METHOD display.
    WRITE: / 'wheels = ', wheels, 'brakes = ', brakes, ' color = ', color, ' gears = ', gears.
ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

DATA thisobject TYPE REF TO lcl_cycle.
CREATE OBJECT thisobject.

CALL METHOD thisobject->setcycle.
CALL METHOD thisobject->display.

DATA thisobject1 TYPE REF TO lcl_bicyle.
CREATE OBJECT thisobject1.

CALL METHOD thisobject1->setbike.
CALL METHOD thisobject1->display.
