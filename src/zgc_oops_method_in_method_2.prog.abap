*&---------------------------------------------------------------------*
*& Report zgc_oops_method_in_method_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_method_in_method_2.

CLASS lcl_customers DEFINITION.
  PUBLIC SECTION.
    METHODS get_customer IMPORTING i_land1 TYPE land1_gp.

  PROTECTED SECTION.
    TYPES: BEGIN OF ty_customer,
            kunnr TYPE kunnr,
            name1 TYPE name1_gp,
            ort01 TYPE ort01_gp,
            land1 TYPE land1_gp,
          END OF ty_customer.

     DATA: lt_customer TYPE TABLE OF ty_customer,
          ls_customer TYPE ty_customer.

    METHODS display.

ENDCLASS.

CLASS lcl_customers IMPLEMENTATION.

METHOD get_customer.

    SELECT kunnr, name1, ort01, land1 FROM kna1 INTO TABLE @lt_customer
        WHERE land1 = @i_land1.

    CALL METHOD me->display.

ENDMETHOD.

METHOD display.

     LOOP AT lt_customer INTO ls_customer.
        WRITE: / ls_customer-kunnr, ls_customer-name1, ls_customer-ort01, ls_customer-land1.
     ENDLOOP.

ENDMETHOD.

ENDCLASS.

SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME.
    PARAMETERS: p_land1 TYPE land1_gp.
SELECTION-SCREEN END OF BLOCK B1.


START-OF-SELECTION.

DATA thisobject TYPE REF TO lcl_customers.
CREATE OBJECT thisobject.

CALL METHOD thisobject->get_customer
    EXPORTING i_land1 = p_land1.
