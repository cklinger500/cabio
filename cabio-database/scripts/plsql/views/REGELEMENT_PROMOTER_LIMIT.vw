CREATE OR REPLACE FORCE VIEW CABIODEV.REGELEMENT_PROMOTER_LIMIT
(IDX, ID)
AS 
select rownum, REGULATORYELEMENT_ID
from REGULATORYELEMENT_PROMOTER_V;

