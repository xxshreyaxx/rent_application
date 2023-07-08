CREATE OR REPLACE PROCEDURE getpropertyrecord(
  owner1 IN NUMBER
) IS
  pid1 NUMBER;
  startdate1 NUMBER;
  endate1 NUMBER;
BEGIN
  FOR rec IN (
    SELECT pid, start_date, end_date
    FROM property
    WHERE owner_id = owner1
  ) LOOP
    pid1 := rec.pid;
    startdate1 := rec.start_date;
    endate1 := rec.end_date;
    DBMS_OUTPUT.PUT_LINE(
      'pid1: ' || pid1 ||
      ' start_date: ' || startdate1 ||
      ' end_date: ' || endate1
    );
  END LOOP;
END;
/
