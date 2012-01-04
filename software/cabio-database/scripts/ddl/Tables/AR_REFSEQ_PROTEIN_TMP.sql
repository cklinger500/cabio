ALTER TABLE AR_REFSEQ_PROTEIN_TMP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_REFSEQ_PROTEIN_TMP CASCADE CONSTRAINTS PURGE
/

--
-- AR_REFSEQ_PROTEIN_TMP  (Table) 
--
CREATE TABLE AR_REFSEQ_PROTEIN_TMP ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, REFSEQ_PROTEIN_ID VARCHAR2(20 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (PROBE_SET_ID, REFSEQ_PROTEIN_ID, GENECHIP_ARRAY) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


