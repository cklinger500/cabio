CREATE OR REPLACE FORCE VIEW CABIODEV.PARTY_ROLE_LIMIT
(IDX, ID)
AS 
select rownum, PARTY_ROLE_ID from PARTY_ROLE;

