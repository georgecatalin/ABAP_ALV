*&---------------------------------------------------------------------*
*& Report zgc_oops_constructors
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_constructors.

CLASS lcl_employee DEFINITION.
    PUBLIC SECTION.
     DATA: employeeID TYPE i,
           employeeName(20) TYPE c.
     CLASS-DATA: deptName(20) TYPE c.

     METHODS: constructor, " Instance constructor
              display_attributes.
     CLASS-METHODS: class_constructor.   " Static constructor

ENDCLASS.

CLASS lcl_employee IMPLEMENTATION.

METHOD constructor.
    employeeid = 125.
    employeeName = 'George Calin'.
    WRITE: / 'Instance Constructor called now.'.
ENDMETHOD.

METHOD display_attributes.
    WRITE: / 'The attributes of this instance objects are ', employeeid, employeename.
ENDMETHOD.

METHOD class_constructor.
    WRITE: / 'Static constructor called now.'.
ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

* An example of calling the static constructor by accessing a static component ( attribute ), before creating an object of the class

" lcl_employee=>deptname = 'Development'.

* An example of calling the static constructor when instantiating an object, before creating the object
DATA this_object TYPE REF TO lcl_employee.
CREATE OBJECT this_object.

CALL METHOD this_object->display_attributes.
