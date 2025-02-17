*&---------------------------------------------------------------------*
*& Report zgc_oops_learning_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_learning_1.

* class definition
CLASS lcl_main DEFINITION.
  PUBLIC SECTION.
   DATA instance_attribute_1 TYPE I.
   DATA: age TYPE i, name(10) TYPE C.

   CLASS-DATA static_attribute_1 TYPE I.

   METHODS: method_1, method_2.

ENDCLASS.

* class implementation
CLASS lcl_main IMPLEMENTATION.

METHOD method_1.
  age = 46.
  name = 'George'.
ENDMETHOD.

METHOD method_2.
    WRITE: / 'Age: ', age, 'Name: ', name.
ENDMETHOD.

ENDCLASS.





* how to use instance and static attributes
START-OF-SELECTION.

DATA: lo_object_1 TYPE REF TO lcl_main.
CREATE OBJECT lo_object_1.

DATA: lo_object_2 TYPE REF TO lcl_main.
CREATE OBJECT lo_object_2.

lo_object_1->instance_attribute_1 = 1978.
lo_object_2->instance_attribute_1 = 1953.

lcl_main=>static_attribute_1 = 2011.

WRITE: / 'Instance attributes depend upon objects ', lo_object_1->instance_attribute_1, lo_object_2->instance_attribute_1.
WRITE: / 'Static attributes are shared by all objects, and can be accessed either from the class, or with the objects themselves ', lcl_main=>static_attribute_1, lo_object_1->static_attribute_1, lo_object_2->static_attribute_1.

* how to use methods

CALL METHOD lo_object_1->method_1.
CALL METHOD lo_object_1->method_2.





END-OF-SELECTION.
