CREATE OR REPLACE PROCEDURE getuserdetails(
  aid1 IN NUMBER
) AS
  user_name1 VARCHAR2(15);
  user_id1 VARCHAR2(15);
  age1 NUMBER;
  add_city1 VARCHAR2(15);
  add_state1 VARCHAR2(15);
  add_street1 VARCHAR2(15);
  add_pincode1 NUMBER;
  add_doorno1 NUMBER;
BEGIN
  SELECT pname, uname, age, city, state, street, pincode, doorno
  INTO user_name1, user_id1, age1, add_city1, add_state1, add_street1, add_pincode1, add_doorno1
  FROM users
  WHERE adharid = aid1;

  DBMS_OUTPUT.PUT_LINE(
    'pname: ' || user_name1 ||
    ' uname: ' || user_id1 ||
    ' age: ' || age1 ||
    ' add_city: ' || add_city1 ||
    ' add_state: ' || add_state1 ||
    ' add_street: ' || add_street1 ||
    ' add_pincode: ' || add_pincode1 ||
    ' doorno: ' || add_doorno1
  );
END;
/
