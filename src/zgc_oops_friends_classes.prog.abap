*&---------------------------------------------------------------------*
*& Report zgc_oops_friends_classes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_friends_classes.

CLASS lcl_class_a DEFINITION DEFERRED.

CLASS lcl_class_b DEFINITION FRIENDS lcl_class_a.
    PUBLIC SECTION.
    METHODS method1.
    PROTECTED SECTION.
    METHODS method2.
    PRIVATE SECTION.
    METHODS method3.
ENDCLASS.

CLASS lcl_class_a DEFINITION.
   PUBLIC SECTION.
   METHODS method4.

ENDCLASS.

CLASS lcl_class_b IMPLEMENTATION.

  METHOD method1.
    WRITE: / 'Inside the public instance method of class lcl_class_b'.
  ENDMETHOD.

  METHOD method2.
    WRITE: / 'Inside the protected instance method of class lcl_class_b'.
  ENDMETHOD.

  METHOD method3.
    WRITE: / 'Inside the private instance method of class lcl_class_b'.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_class_a IMPLEMENTATION.

METHOD method4.

    WRITE: / 'Inside the public instance method of lcl_class_a'.

    DATA thisobject TYPE REF TO lcl_class_b.
    CREATE OBJECT thisobject.

    CALL METHOD thisobject->method1.
    CALL METHOD thisobject->method2.
    CALL METHOD thisobject->method3.

   ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

DATA theObject TYPE REF TO lcl_class_a.
CREATE OBJECT theObject.

CALL METHOD theObject->method4.
