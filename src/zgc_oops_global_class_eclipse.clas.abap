CLASS zgc_oops_global_class_eclipse DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: instance_attribute_1 TYPE i,
          instance_attribute_2 TYPE i,
          product_of_numbers TYPE i.

    METHODS: instance_method_1,
             instance_method_2,
             instance_method_3 IMPORTING number TYPE i,
             multiplication_method IMPORTING number1 TYPE i number2 TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_class_eclipse IMPLEMENTATION.


METHOD instance_method_1.
    WRITE: / 'instance_method_1() was called'.
ENDMETHOD.

METHOD instance_method_2.
    WRITE: / 'instance_method_2() was called'.
ENDMETHOD.

METHOD instance_method_3.
   WRITE: / 'instance_method_3() was called with the parameter', number.
ENDMETHOD.

METHOD multiplication_method.
    product_of_numbers = number1 * number2.
    WRITE: / 'The product of number is ', product_of_numbers.
ENDMETHOD.

ENDCLASS.
