CLASS zgc_oops_global_class_1 DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: store,
            display,
            payment ABSTRACT.

  PROTECTED SECTION.
    DATA: stairsno TYPE i,
          steward(10) TYPE c.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_class_1 IMPLEMENTATION.

METHOD store.
    stairsno = 5.
    steward = 'Alexandru'.
    WRITE: / 'Stored the stairs and the steward name'.
ENDMETHOD.

METHOD display.
    WRITE: / 'Stairs number = ', stairsno, 'Steward name = ', steward.
ENDMETHOD.

ENDCLASS.
