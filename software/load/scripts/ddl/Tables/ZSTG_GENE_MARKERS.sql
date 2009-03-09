ALTER TABLE ZSTG_GENE_MARKERS
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_GENE_MARKERS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE_MARKERS  (Table) 
--
CREATE TABLE ZSTG_GENE_MARKERS ( GENE_ID NUMBER NOT NULL, MARKER_ID VARCHAR2(500 BYTE) NOT NULL, PRIMARY KEY (GENE_ID, MARKER_ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


