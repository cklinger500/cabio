CREATE OR REPLACE FORCE VIEW CABIODEV.LIBRARY_OBJECT_LIMIT
(IDX, ID)
AS 
select rownum, LIBRARY_ID from LIBRARY_OBJECT;


