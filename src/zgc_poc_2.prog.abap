*&---------------------------------------------------------------------*
*& Module Pool      ZGC_POC_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
PROGRAM ZGC_POC_2.

INCLUDE ZGC_POC_2TOP.
*INCLUDE ZGC_POC_1TOP.    " Global Data

* INCLUDE ZGC_POC_1O01                            .  " PBO-Modules
* INCLUDE ZGC_POC_1I01                            .  " PAI-Modules
* INCLUDE ZGC_POC_1F01                            .  " FORM-Routines

INCLUDE ZGC_POC_2_STATUS_0100O01.
*INCLUDE zgc_poc_1_status_0100o01.

INCLUDE ZGC_POC_2_INITIALIZEO01.
*INCLUDE zgc_poc_1_initializeo01.

INCLUDE ZGC_POC_2_FILL_IN_ITEM_TBLI01.
*INCLUDE zgc_poc_1_fill_in_item_tbli01.

INCLUDE zgc_poc_2_get_text_inputi01.

INCLUDE zgc_poc_2_apply_conditionalo01.
