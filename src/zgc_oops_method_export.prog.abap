*&---------------------------------------------------------------------*
*& Report zgc_oops_method_export
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_method_export.

CLASS lcl_main DEFINITION.
    PUBLIC SECTION.
    METHODS: get_customer_details IMPORTING i_kunnr TYPE kunnr
             EXPORTING e_name TYPE name1_gp
                       e_ort TYPE ort01_gp.
ENDCLASS.


CLASS lcl_main IMPLEMENTATION.

METHOD get_customer_details.

    SELECT SINGLE name1, ort01 FROM kna1 INTO (@e_name, @e_ort) where kunnr = @i_kunnr.

ENDMETHOD.


ENDCLASS.

START-OF-SELECTION.

PARAMETERS: p_kunnr TYPE kunnr.

DATA: lv_name TYPE name1_gp,
      lv_ort01 TYPE ort01_gp.

DATA this_object TYPE REF TO lcl_main.
CREATE OBJECT this_object.

CALL METHOD this_object->get_customer_details
    EXPORTING i_kunnr = p_kunnr
    IMPORTING e_name = lv_name
              e_ort = lv_ort01.

WRITE: / 'The details of the customer are ->', lv_name, lv_ort01.
