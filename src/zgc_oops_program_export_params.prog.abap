*&---------------------------------------------------------------------*
*& Report zgc_oops_program_export_params
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgc_oops_program_export_params.

PARAMETERS: p_kunnr TYPE kunnr.


DATA : lv_name TYPE name1_gp,
       lv_ort01 TYPE ort01_gp.

DATA this_object TYPE REF TO zgc_gcl_methods.
CREATE OBJECT this_object.


CALL METHOD this_object->get_customer_details
    EXPORTING i_kunnr = p_kunnr
    IMPORTING e_name = lv_name
              e_ort = lv_ort01.

WRITE: 'The details of the customer are ->', lv_name, lv_ort01.
