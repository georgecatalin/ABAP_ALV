CLASS zgc_oops_global_class_b DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS method4.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_class_b IMPLEMENTATION.

METHOD method4.
    WRITE: / 'Calling public method4() of zgc_oops_global_class_b  '.

    DATA myobj TYPE REF TO zgc_oops_global_class_a.
    CREATE OBJECT myobj.

    CALL METHOD myobj->method1.
    CALL METHOD myobj->method2.
    CALL METHOD myobj->method3.

ENDMETHOD.


ENDCLASS.
