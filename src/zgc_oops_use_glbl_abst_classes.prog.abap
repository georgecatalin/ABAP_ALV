*&---------------------------------------------------------------------*
*& Report zgc_oops_use_glbl_abst_classes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_use_glbl_abst_classes.

DATA myObject TYPE REF TO zgc_oops_global_class_1.

DATA thisCheque TYPE REF TO zgc_oops_global_abs_cheque.
CREATE OBJECT thisCheque.

WRITE: / 'Calling the object of cheque class'.

CALL METHOD thisCheque->store.
CALL METHOD thisCheque->display.
CALL METHOD thisCheque->payment.
CALL METHOD thisCheque->method1.


ULINE.

WRITE: / 'Calling the object of super class through narrow casting'.

myobject = thisCheque.

CALL METHOD myobject->store.
CALL METHOD myobject->display.
CALL METHOD myobject->payment.

ULINE.

WRITE: / 'Calling the object of cheque class'.

DATA thisCard TYPE REF TO zgc_oops_global_abs_cheque.
CREATE OBJECT thisCard.

WRITE: / 'Calling the object of cheque class'.

CALL METHOD thisCard->store.
CALL METHOD thisCard->display.
CALL METHOD thisCard->payment.
