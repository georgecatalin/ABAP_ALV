CLASS zgc_oops_global_class_a DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS: zgc_oops_global_class_b.

  PUBLIC SECTION.
    METHODS method1.

  PROTECTED SECTION.
    METHODS method2.
  PRIVATE SECTION.
    METHODS method3.



ENDCLASS.



CLASS zgc_oops_global_class_a IMPLEMENTATION.

METHOD method1.
    WRITE: / 'Public method1() called.'.
ENDMETHOD.

METHOD method2.
    WRITE: / 'Protected method2() called.'.
ENDMETHOD.

METHOD method3.
    WRITE: / 'Private method3() called.'.
ENDMETHOD.


ENDCLASS.
