*----------------------------------------------------------------------*
***INCLUDE LZZGIT_TEST_SCR_TEMPLATEO01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0020 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0020 OUTPUT.
  SELECT SINGLE FROM t002tx
              FIELDS *
               WHERE spras = 'E'
                 and sprsl = '3E'
                INTO @t002tx ##no_text.

  SET PF-STATUS 'LANGUAGE_DISPLAY'.
  SET TITLEBAR 'LANGUAGE_DISPLAY'.
ENDMODULE.
