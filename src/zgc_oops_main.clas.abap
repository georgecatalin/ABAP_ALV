class ZGC_OOPS_MAIN definition
  public
  create public .

public section.

  data INSTANCE_ATTRIBUTE_1 type I .
  data INSTANCE_ATTRIBUTE_2 type I .

  methods INSTANCE_METHOD_1 .
  methods INSTANCE_METHOD_2 .
protected section.
private section.
ENDCLASS.



CLASS ZGC_OOPS_MAIN IMPLEMENTATION.


  method INSTANCE_METHOD_1.

    WRITE: / 'instance_method_1() called'.

  endmethod.


  method INSTANCE_METHOD_2.

    WRITE: / 'instance_method_1() called'.

  endmethod.
ENDCLASS.
