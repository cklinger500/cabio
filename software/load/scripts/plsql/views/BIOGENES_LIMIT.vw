CREATE OR REPLACE FORCE VIEW CABIODEV.BIOGENES_LIMIT
(IDX, ID)
AS 
select rownum, BIOGENES_ID from BIOGENES;

