*----------------------------------------------------------------------*
***INCLUDE LZZGIT_TEST_SCR_TEMPLATEO01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0020 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0020 OUTPUT.
  SELECT SINGLE FROM t001
              FIELDS bukrs, butxt, ort01, land1, waers, ktopl, stceg
               WHERE bukrs = '0001'
                INTO @t001.

  SET PF-STATUS 'CLOSE_COMPANY'.
  SET TITLEBAR 'CLOSE_COMPANY'.
ENDMODULE.
