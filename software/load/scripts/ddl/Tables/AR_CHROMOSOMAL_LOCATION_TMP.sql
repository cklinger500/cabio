ALTER TABLE AR_CHROMOSOMAL_LOCATION_TMP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_CHROMOSOMAL_LOCATION_TMP CASCADE CONSTRAINTS PURGE
/

--
-- AR_CHROMOSOMAL_LOCATION_TMP  (Table) 
--
CREATE TABLE AR_CHROMOSOMAL_LOCATION_TMP ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, CHROMOSOMAL_LOCATION VARCHAR2(100 BYTE) NOT NULL, CHROMOSOME_NUMBER VARCHAR2(2500 BYTE) NULL, CYTO_START VARCHAR2(50 BYTE) NOT NULL, CYTO_STOP VARCHAR2(50 BYTE) NOT NULL, TRIM_CHR VARCHAR2(50 BYTE) NULL, ASSEMBLY VARCHAR2(50 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, CHROMOSOME_ID NUMBER NULL, PRIMARY KEY (PROBE_SET_ID, CHROMOSOMAL_LOCATION, CYTO_START, CYTO_STOP, ASSEMBLY, GENECHIP_ARRAY) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


