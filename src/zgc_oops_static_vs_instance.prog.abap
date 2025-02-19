*&---------------------------------------------------------------------*
*& Report zgc_oops_static_vs_instance
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_static_vs_instance.

CLASS lcl_main DEFINITION.

PUBLIC SECTION.

CLASS-DATA static_attribute TYPE i.

METHODS: constructor. " instance constructor
CLASS-METHODS: class_constructor. "static constractor

ENDCLASS.


CLASS lcl_main IMPLEMENTATION.

METHOD constructor.
    WRITE: / 'Instance constructor was called now.'.
ENDMETHOD.

METHOD class_constructor.
    WRITE: / 'Static constructor was called now.'.
ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.


" executing the static constructor before creating any object, by appealing to a static component of the class

" lcl_main=>static_attribute = 1953.


" otherwise the static constructor will be called only once, before creating the first object, before calling the instance constructor of the 1st object
WRITE: / 'Create the first object'.
DATA this_object_1 TYPE REF TO lcl_main.
CREATE OBJECT this_object_1.

ULINE.
WRITE: / 'Create the second object'.
DATA this_object_2 TYPE REF TO lcl_main.
CREATE OBJECT this_object_2.

ULINE.
WRITE: / 'Create the third object'.
DATA this_object_3 TYPE REF TO lcl_main.
CREATE OBJECT this_object_3.
