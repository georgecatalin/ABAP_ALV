*&---------------------------------------------------------------------*
*& Report zgc_oops_program_w_class_2
*&---------------------------------------------------------------------*
*& A program to accept two numbers and display the multiplication by making use of object methods
*&---------------------------------------------------------------------*
REPORT zgc_oops_program_w_class_2.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME.
    PARAMETERS: p1 TYPE i,
                p2 TYPE i.
SELECTION-SCREEN END OF BLOCK b1.



DATA this_object TYPE REF TO zgc_oops_global_class_eclipse.
CREATE OBJECT this_object.


CALL METHOD this_object->multiplication_method
    EXPORTING number1 = p1 number2 = p2.
