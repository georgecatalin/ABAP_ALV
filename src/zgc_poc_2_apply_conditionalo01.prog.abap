*----------------------------------------------------------------------*
***INCLUDE ZGC_POC_2_APPLY_CONDITIONALO01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module APPLY_CONDITIONAL_FORMATTING OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE apply_conditional_formatting OUTPUT.

  IF gv_text_input IS NOT INITIAL.
    IF gs_sales_item-itemcode CS gv_text_input.

      LOOP AT SCREEN.
        screen-intensified = 1.  " Choose desired color code
        MODIFY SCREEN.
      ENDLOOP.
    ENDIF.
  ENDIF.


ENDMODULE.
