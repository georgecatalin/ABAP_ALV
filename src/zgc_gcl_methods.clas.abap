CLASS zgc_gcl_methods DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS: get_customer_details IMPORTING i_kunnr TYPE kunnr
             EXPORTING e_name TYPE name1_gp
                       e_ort TYPE ort01_gp.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_gcl_methods IMPLEMENTATION.


METHOD get_customer_details.

    SELECT SINGLE name1, ort01 FROM kna1 INTO (@e_name, @e_ort) where kunnr = @i_kunnr.

ENDMETHOD.


ENDCLASS.
