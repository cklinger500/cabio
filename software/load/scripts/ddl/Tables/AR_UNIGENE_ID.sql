ALTER TABLE AR_UNIGENE_ID
 DROP PRIMARY KEY CASCADE
/
DROP TABLE AR_UNIGENE_ID CASCADE CONSTRAINTS PURGE
/

--
-- AR_UNIGENE_ID  (Table) 
--
CREATE TABLE AR_UNIGENE_ID ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, UNIGENE_ID VARCHAR2(20 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL, PRIMARY KEY (PROBE_SET_ID, UNIGENE_ID, GENECHIP_ARRAY) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


