*----------------------------------------------------------------------*
***INCLUDE ZGC_POC_2_APPLY_CONDITIONALO01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module APPLY_CONDITIONAL_FORMATTING OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE apply_conditional_formatting OUTPUT.

  DATA: lv_average_amount TYPE p DECIMALS 2.

  IF vbak-vtweg IS NOT INITIAL.
    CALL FUNCTION 'GET_AVG_AMOUNT_2024'
      EXPORTING
        distribution_channel = vbak-vtweg
        startdate            = vbak-erdat
      IMPORTING
        average_amount       = lv_average_amount.
    .
  ENDIF.

  IF gt_sales_item IS NOT INITIAL.
    IF gs_sales_item-lineamount < lv_average_amount AND gs_sales_item-lineamount <> 0.

      LOOP AT SCREEN.
        screen-color = '5'.
        screen-intensified = 1.  " Choose desired color code
        MODIFY SCREEN.
      ENDLOOP.

    ENDIF.
  ENDIF.


ENDMODULE.
