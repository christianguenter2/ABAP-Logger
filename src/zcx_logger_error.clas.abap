CLASS zcx_logger_error DEFINITION
  PUBLIC
  CREATE PUBLIC
  INHERITING FROM cx_static_check.

  PUBLIC SECTION.
    INTERFACES:
      if_t100_dyn_msg.

    CLASS-METHODS:
      raise_syst
        RAISING
          zcx_logger_error.

ENDCLASS.



CLASS zcx_logger_error IMPLEMENTATION.

  METHOD raise_syst.

    RAISE EXCEPTION TYPE zcx_logger_error
      MESSAGE
      ID sy-msgid
      NUMBER sy-msgno
      WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.

  ENDMETHOD.

ENDCLASS.
