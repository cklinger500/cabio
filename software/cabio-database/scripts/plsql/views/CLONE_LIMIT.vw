CREATE OR REPLACE FORCE VIEW CABIODEV.CLONE_LIMIT
(IDX, ID)
AS 
select rownum, CLONE_ID from CLONE;

