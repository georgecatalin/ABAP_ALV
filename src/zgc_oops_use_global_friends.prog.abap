*&---------------------------------------------------------------------*
*& Report zgc_oops_use_global_friends
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_use_global_friends.

DATA thisobject TYPE REF TO zgc_oops_global_class_b.
CREATE OBJECT thisobject.

CALL METHOD thisobject->method4.
