DROP TABLE SNP2UNIQ CASCADE CONSTRAINTS PURGE
/

--
-- SNP2UNIQ  (Table) 
--
CREATE TABLE SNP2UNIQ ( SNP_ID NUMBER(38) NOT NULL, ACCESSION VARCHAR2(20 BYTE) NOT NULL, HS NUMBER(38) NOT NULL, BUILD_ID NUMBER(38) NOT NULL, GENE_ID NUMBER NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

