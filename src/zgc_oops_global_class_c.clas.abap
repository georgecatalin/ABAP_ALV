class ZGC_OOPS_GLOBAL_CLASS_C definition
  public
  final
  create public

  global friends ZGC_OOPS_GLOBAL_CLASS_B .

public section.

  methods METHOD1 .
protected section.

  methods METHOD2 .
private section.

  methods METHOD3 .
ENDCLASS.



CLASS ZGC_OOPS_GLOBAL_CLASS_C IMPLEMENTATION.


  method METHOD1.
  WRITE: / 'Public method1() called.'.
  endmethod.


  method METHOD2.
 WRITE: / 'Protected method2() called.'.
  endmethod.


  method METHOD3.
WRITE: / 'Private method3() called.'.
  endmethod.
ENDCLASS.
