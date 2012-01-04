ALTER TABLE GENE_GENEALIAS
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GENE_GENEALIAS CASCADE CONSTRAINTS PURGE
/

--
-- GENE_GENEALIAS  (Table) 
--
--  Dependencies: 
--   GENE_TV (Table)
--
CREATE TABLE GENE_GENEALIAS ( GENE_ID NUMBER NOT NULL, ALIAS_ID NUMBER NULL, GENE_ALIAS_ID NUMBER NOT NULL, CHECK ("ALIAS_ID" IS NOT NULL) DISABLE, PRIMARY KEY (GENE_ID, GENE_ALIAS_ID), FOREIGN KEY (GENE_ID) REFERENCES GENE_TV (GENE_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


