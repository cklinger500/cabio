CREATE OR REPLACE FORCE VIEW CABIODEV.GENE_HOMOLOGUE_LIMIT
(IDX, ID)
AS 
select rownum, RELATED_GENE from GENE_HOMOLOGUE;


