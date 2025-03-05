CLASS zgc_oops_global_abs_cheque DEFINITION INHERITING FROM zgc_oops_global_class_1
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: payment REDEFINITION,
            method1.
  PROTECTED SECTION.
    DATA: chq_id TYPE i,
          chq_date TYPE d,
          chq_amount TYPE p DECIMALS 1.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgc_oops_global_abs_cheque IMPLEMENTATION.

METHOD payment.
    chq_id = 120.
    chq_date =  sy-datum - 20.
    chq_amount = '1200.3'.
    WRITE: / 'I set the chq_id, chq_date and chq_amount', chq_id, chq_date, chq_amount.
ENDMETHOD.

METHOD method1.
    WRITE: / 'Method1() is run now.'.
ENDMETHOD.

ENDCLASS.
