*&---------------------------------------------------------------------*
*& Report zgc_oops_method_in_method_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_method_in_method_1.

CLASS lcl_employee DEFINITION.
    PUBLIC SECTION.

    METHODS set_employee IMPORTING i_employeeid TYPE i
                                   i_employeename TYPE c.

    PROTECTED SECTION.
    DATA: employeeid TYPE i,
          employeename(30) TYPE c.

    METHODS  display.

ENDCLASS.

CLASS lcl_employee IMPLEMENTATION.

METHOD set_employee.
    me->employeeid = i_employeeid.
    me->employeename = i_employeename.

    CALL METHOD me->display.

ENDMETHOD.

METHOD display.
  WRITE: / 'the properties are ', employeeid, employeename.
ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

DATA thisobject TYPE REF TO lcl_employee.
CREATE OBJECT thisobject.

CALL METHOD thisobject->set_employee
                EXPORTING i_employeeid = 125
                          i_employeename = 'George Calin'.
