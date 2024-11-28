*----------------------------------------------------------------------*
***INCLUDE ZGC_POC_1_INITIALIZEO01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module INITIALIZE OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE initialize OUTPUT.
  PERFORM initialize_internal_table.
ENDMODULE.


FORM initialize_internal_table.

    SELECT VBELN, ERDAT, ERNAM, AUART, VTWEG, VKORG, VKBUR, WAERK, NETWR FROM VBAK INTO TABLE @gt_sales_header UP TO 50 ROWS.

ENDFORM.
