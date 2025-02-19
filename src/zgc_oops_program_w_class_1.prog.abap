*&---------------------------------------------------------------------*
*& Report zgc_oops_program_w_class_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_program_w_class_1.

DATA this_object TYPE REF TO zgc_oops_global_class_eclipse.
CREATE OBJECT this_object.

CALL METHOD this_object->instance_method_1.
CALL METHOD this_object->instance_method_2.
CALL METHOD this_object->instance_method_3 EXPORTING number = 2011.
