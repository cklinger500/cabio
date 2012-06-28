--
-- SET_MARKER_REL_LOC_ID  (Trigger) 
--
--  Dependencies: 
--   MARKER_RELATIVE_LOCATION (Table)
--
CREATE OR REPLACE TRIGGER SET_marker_rel_loc_ID
BEFORE INSERT
ON MARKER_RELATIVE_LOCATION
FOR EACH ROW
BEGIN
  SELECT REL_LOCATION_SEQ.NEXTVAL
  INTO :NEW.ID
  FROM DUAL;
END;
/
SHOW ERRORS;


