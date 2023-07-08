CREATE OR REPLACE PROCEDURE createnewuser(
  adhar_id1 IN VARCHAR2,
  p_name IN VARCHAR2,
  user_name1 IN VARCHAR2,
  user_password1 IN VARCHAR2,
  age1 IN NUMBER,
  add_doorno1 IN NUMBER,
  add_state1 IN VARCHAR2,
  add_city1 IN VARCHAR2,
  add_street1 IN VARCHAR2,
  add_pincode1 IN VARCHAR2
) AS
BEGIN
  INSERT INTO users (
    adharid,
    pname,
    uname,
    upassword,
    age,
    doorno,
    street,
    city,
    state,
    pincode
  ) VALUES (
    adhar_id1,
    p_name,
    user_name1,
    user_password1,
    age1,
    add_doorno1,
    add_street1,
    add_city1,
    add_state1,
    add_pincode1
  );
END;
/
