CLASS zgc_oops_global_abs_card DEFINITION
  PUBLIC
  INHERITING FROM zgc_oops_global_class_1
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS payment REDEFINITION.
  PROTECTED SECTION.
    DATA: cc_id TYPE i,
          cc_date TYPE d,
          cc_amount TYPE p DECIMALS 1.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_abs_card IMPLEMENTATION.

METHOD payment.

    cc_id = 121.
    cc_date = sy-datum - 1.
    cc_amount = '1500.5'.
    WRITE: / 'Payment= ' , cc_id, cc_date, cc_amount.

ENDMETHOD.



ENDCLASS.
