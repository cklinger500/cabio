DROP TABLE AR_CHROMOSOMAL_LOCATION CASCADE CONSTRAINTS PURGE
/

--
-- AR_CHROMOSOMAL_LOCATION  (Table) 
--
CREATE TABLE AR_CHROMOSOMAL_LOCATION ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, CHROMOSOMAL_LOCATION VARCHAR2(100 BYTE) NOT NULL, CHROMOSOME_NUMBER VARCHAR2(2500 BYTE) NULL, CYTO_START VARCHAR2(40 BYTE) NOT NULL, CYTO_STOP VARCHAR2(50 BYTE) NOT NULL, TRIM_CHR VARCHAR2(50 BYTE) NULL, ASSEMBLY VARCHAR2(50 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, CHROMOSOME_ID NUMBER NULL, CHECK ("CHROMOSOME_NUMBER" IS NOT NULL) DISABLE, CHECK ("TRIM_CHR" IS NOT NULL) DISABLE ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


