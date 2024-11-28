*----------------------------------------------------------------------*
***INCLUDE ZGC_POC_1_FILL_IN_ITEM_TBLI01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  FILL_IN_ITEM_TBL  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE fill_in_item_tbl INPUT.

   DATA: lv_thisline TYPE i.

  GET CURSOR LINE lv_thisline.

   gv_current_line = header_tbl-top_line + lv_thisline - 1.

   READ TABLE gt_sales_header INTO gs_sales_header INDEX gv_current_line.

   SELECT VBELN, POSNR, MATNR, WERKS, LGORT, KWMENG, WAERK, NETWR FROM VBAP INTO TABLE @gt_sales_item WHERE VBELN = @gs_sales_header-orderid.

ENDMODULE.
