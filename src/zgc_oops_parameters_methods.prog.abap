*&---------------------------------------------------------------------*
*& Report zgc_oops_parameters_methods
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_parameters_methods.


CLASS lcl_employee DEFINITION.
    PUBLIC SECTION.
    DATA: employee_id TYPE i,
          employee_name(30) TYPE c.

    METHODS: method_1 IMPORTING year_of_joining TYPE i, " by default the IMPORTING parameter is obligatory unless specified as OPTIONAL
             method_2 EXPORTING age TYPE i,
             method_3 CHANGING department TYPE i,
             display.

ENDCLASS.

CLASS lcl_employee IMPLEMENTATION.

METHOD method_1.
     WRITE: / 'method_1 was called ' , year_of_joining.
ENDMETHOD.

METHOD method_2.
     WRITE: / 'method_2 was called.', age .
ENDMETHOD.


METHOD method_3.
  WRITE: / 'method_2 was called.', department.
ENDMETHOD.


METHOD display.
   WRITE: / 'display was called.'.
ENDMETHOD.

ENDCLASS.


START-OF-SELECTION.

DATA: lv_age TYPE i.
DATA: lv_department TYPE i.

DATA this_object TYPE REF TO lcl_employee.
CREATE OBJECT this_object.

CALL METHOD this_object->method_1
    EXPORTING year_of_joining = 1978.

CALL METHOD this_object->method_2
    IMPORTING age = lv_age.

WRITE: / lv_age.


CALL METHOD this_object->method_3
    CHANGING department = lv_department.

CALL METHOD this_object->display.
