CREATE OR REPLACE PROCEDURE searchpropertyforrent(
  city1 IN VARCHAR2
) AS
  property_id1 NUMBER;
  rent_per_month1 NUMBER;
  percentage_hike1 NUMBER;
  add_state1 VARCHAR2(15);
  add_city1 VARCHAR2(15);
  add_streetname1 VARCHAR2(15);
  add_pincode1 NUMBER;
  add_doorno1 NUMBER;
  floor_no1 NUMBER;
  available_from1 DATE;
  available_to1 DATE;
  plith_area1 NUMBER;
  total_area1 NUMBER;
  type_id1 NUMBER;
BEGIN
  FOR rec IN (
    SELECT
      pid,
      rentpm,
      hike,
      state,
      city,
      street,
      pincode,
      door_no,
      no_floors,
      start_date,
      end_date,
      plinth_area,
      total_area,
      prop_type
    FROM property
    WHERE city = city1
  ) LOOP
    property_id1 := rec.pid;
    rent_per_month1 := rec.rentpm;
    percentage_hike1 := rec.hike;
    add_state1 := rec.state;
    add_city1 := rec.city;
    add_streetname1 := rec.street;
    add_pincode1 := rec.pincode;
    add_doorno1 := rec.door_no;
    floor_no1 := rec.no_floors;
    available_from1 := rec.start_date;
    available_to1 := rec.end_date;
    plith_area1 := rec.plinth_area;
    total_area1 := rec.total_area;
    type_id1 := rec.prop_type;
    DBMS_OUTPUT.PUT_LINE(
      'pid: ' || property_id1 ||
      ' rent_per_month: ' || rent_per_month1 ||
      ' percentage_hike: ' || percentage_hike1 ||
      ' add_state: ' || add_state1 ||
      ' add_city: ' || add_city1 ||
      ' add_streetname: ' || add_streetname1 ||
      ' add_pincode: ' || add_pincode1 ||
      ' add_doorno1: ' || add_doorno1 ||
      ' floor_no: ' || floor_no1 ||
      ' available_from: ' || available_from1 ||
      ' available_to: ' || available_to1 ||
      ' plith_area: ' || plith_area1 ||
      ' total_area: ' || total_area1 ||
      ' type: ' || type_id1
    );
  END LOOP;
END;
/
