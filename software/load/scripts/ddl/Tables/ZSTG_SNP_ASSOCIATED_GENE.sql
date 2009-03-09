DROP TABLE ZSTG_SNP_ASSOCIATED_GENE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_SNP_ASSOCIATED_GENE  (Table) 
--
CREATE TABLE ZSTG_SNP_ASSOCIATED_GENE ( PROBESET_ID VARCHAR2(200 BYTE) NOT NULL, ACCESSION VARCHAR2(20 BYTE) NOT NULL, ASSOCIATION_POSITION VARCHAR2(50 BYTE) NOT NULL, DISTANCE VARCHAR2(30 BYTE) NOT NULL, UNIGENE_ID VARCHAR2(30 BYTE) NULL, ASSOCIATED_GENE_SYMBOL VARCHAR2(50 BYTE) NULL, ASSOCIATED_GENE_NAME VARCHAR2(4000 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


