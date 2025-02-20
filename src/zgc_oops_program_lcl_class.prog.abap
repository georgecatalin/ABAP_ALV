*&---------------------------------------------------------------------*
*& Report ZGC_OOPS_PROGRAM_LCL_CLASS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZGC_OOPS_PROGRAM_LCL_CLASS.

CLASS lcl_main DEFINITION.
  PUBLIC SECTION.
  DATA: instance_attribute_1 TYPE i,
             instance_attribute_2 TYPE i.

  METHODS: instance_method_1,
                      instance_method_2.

ENDCLASS.

CLASS lcl_main IMPLEMENTATION.

  METHOD instance_method_1.
    WRITE: / 'instance_method_1() called'.
  ENDMETHOD.

    METHOD instance_method_2.
    WRITE: / 'instance_method_1() called'.
  ENDMETHOD.

ENDCLASS.
