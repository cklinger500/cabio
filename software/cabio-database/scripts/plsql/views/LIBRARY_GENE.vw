CREATE OR REPLACE FORCE VIEW CABIODEV.LIBRARY_GENE
(LIBRARY_ID, GENE_ID)
AS 
SELECT C.LIBRARY_ID, GS.GENE_ID 
FROM CLONE_TV C, NUCLEIC_ACID_SEQUENCE s, GENE_NUCLEIC_ACID_SEQUENCE gs 
WHERE S.CLONE_ID = C.CLONE_ID 
  AND S.ID = GS.GENE_SEQUENCE_ID;


