*&---------------------------------------------------------------------*
*& Report zgc_oops_multilvl_inheritce_2
*&---------------------------------------------------------------------*
*&zgc_oops_global_class_cycle
*&---------------------------------------------------------------------*
REPORT zgc_oops_multilvl_inheritce_2.

DATA thisobject TYPE REF TO  zgc_oops_global_class_cycle.
CREATE OBJECT thisobject.

CALL METHOD thisobject->setcycle.
CALL METHOD thisobject->display.

DATA thisobject_1 TYPE REF TO zgc_oops_global_class_bicycle.
CREATE OBJECT thisobject_1.

CALL METHOD thisobject_1->setbicycle.
CALL METHOD thisobject_1->display.
