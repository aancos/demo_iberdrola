*"* use this source file for your ABAP unit test classes
class ltcl_find_flights definition final for testing
  duration medium
  risk level harmless.

  private section.
    methods:
      test_find_cargo_flight for testing raising cx_static_check.
endclass.


class ltcl_find_flights implementation.

  method test_find_cargo_flight.

    SELECT SINGLE
      FROM /lrn/cargoflight
    FIELDS carrier_id, connection_id, flight_date,
           airport_from_id, airport_to_id
      INTO @DATA(some_flight_data).

    IF sy-subrc <> 0.
      cl_abap_unit_assert=>fail( `No data in table /lrn/CARGOFLIGHT` ).
    ENDIF.

    TRY.

        DATA(the_carrier) = NEW lcl_carrier( i_carrier_id = some_flight_data-carrier_id ).

      CATCH cx_abap_invalid_value.

        cl_abap_unit_assert=>fail( `Unable to instantiate lcl_carrier` ).

    ENDTRY.

  endmethod.

endclass.
