FUNCTION GET_AVG_AMOUNT_2024.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(DISTRIBUTION_CHANNEL) TYPE  P33_FORMAT_VERSION DEFAULT
*"       '10'
*"     REFERENCE(STARTDATE) TYPE  ERDAT
*"  EXPORTING
*"     REFERENCE(AVERAGE_AMOUNT) TYPE  NETWR
*"----------------------------------------------------------------------

SELECT AVG( NETWR ) FROM VBAK INTO @AVERAGE_AMOUNT
  WHERE VTWEG = @DISTRIBUTION_CHANNEL AND ERDAT > @STARTDATE.



ENDFUNCTION.
