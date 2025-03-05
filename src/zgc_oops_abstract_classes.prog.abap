*&---------------------------------------------------------------------*
*& Report zgc_oops_abstract_classes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_abstract_classes.

CLASS lcl_restaurant DEFINITION ABSTRACT.
PUBLIC SECTION.
    METHODS: store,
             display,
             payment ABSTRACT.
PROTECTED SECTION.
    DATA: tableno TYPE i,
          steward TYPE string.
ENDCLASS.


CLASS lcl_restaurant IMPLEMENTATION.

METHOD store.
   tableno = 5.
   steward = 4.
ENDMETHOD.

METHOD display.
    WRITE: / 'table number=', tableno, 'steward =', steward.
ENDMETHOD.

ENDCLASS.

CLASS lcl_cheque DEFINITION INHERITING FROM lcl_restaurant.
PUBLIC SECTION.
    METHODS: payment REDEFINITION,
             method1.
PROTECTED SECTION.
    DATA: chq_id TYPE i,
          chq_date TYPE d,
          chq_amount TYPE i.
ENDCLASS.

CLASS lcl_cheque IMPLEMENTATION.
METHOD payment.
    chq_id = 101.
    chq_date = sy-datum - 30.
    chq_amount = 1500.
    WRITE: / chq_id, chq_date, chq_amount.
ENDMETHOD.

METHOD method1.
    WRITE: / 'this is happening in method1'.
ENDMETHOD.
ENDCLASS.


CLASS lcl_creditcard DEFINITION INHERITING FROM lcl_restaurant.
PUBLIC SECTION.
    METHODS payment REDEFINITION.
PROTECTED SECTION.
    DATA: cc_id TYPE i,
          cc_date TYPE d,
          cc_amount TYPE p DECIMALS 1.
ENDCLASS.

CLASS lcl_creditcard IMPLEMENTATION.

METHOD payment.
    cc_id = 102.
    cc_date =  sy-datum.
    cc_amount = 1000.
    WRITE: / cc_id, cc_amount, cc_date.
ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

* one can not create an object of an abstract class ( a class that contains at least one abstract method )
DATA parent TYPE REF TO lcl_restaurant.

DATA cheque TYPE REF TO lcl_cheque.
CREATE OBJECT cheque.

FORMAT color 3.
WRITE: / 'object of child 1 created and not appealing to its method'.
CALL METHOD cheque->store.
CALL METHOD cheque->display.
CALL METHOD cheque->payment.
CALL METHOD cheque->method1.

* narrow casting is setting the properties of the child object to the object of the parent class
parent = cheque.

FORMAT color 1.
WRITE  / 'This is happening from the parent object through narrow casting'.

CALL METHOD parent->store.
CALL METHOD parent->display.
CALL METHOD parent->payment. " the methods of the subclass can be appealed to from the parent object.


FORMAT color 5.
WRITE / 'This happens in the subclass with the child object'.

DATA cc TYPE REF TO lcl_creditcard.
CREATE OBJECT cc.

CALL METHOD cc->store.
CALL METHOD cc->display.
CALL METHOD cc->payment.

* This is narrow casting
parent = cc.

WRITE / 'This happens in the object of the parent after narrow casting from the child no. 2 class'.

CALL METHOD parent->store.
CALL METHOD parent->display.
CALL METHOD parent->payment. " this is making use of the methods of the subclass from the object of the super class which was narrow casted
