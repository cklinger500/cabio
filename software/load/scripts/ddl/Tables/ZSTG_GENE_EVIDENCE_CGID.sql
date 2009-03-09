ALTER TABLE ZSTG_GENE_EVIDENCE_CGID
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_GENE_EVIDENCE_CGID CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE_EVIDENCE_CGID  (Table) 
--
CREATE TABLE ZSTG_GENE_EVIDENCE_CGID ( GENE_ID NUMBER NULL, EVIDENCE_ID NUMBER NULL, EVIDENCECODE_ID NUMBER NULL, PRIMARY KEY (GENE_ID, EVIDENCE_ID, EVIDENCECODE_ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


