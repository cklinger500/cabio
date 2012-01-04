DROP TABLE AR_GO_BIOLOGICAL_PROCESS CASCADE CONSTRAINTS PURGE
/

--
-- AR_GO_BIOLOGICAL_PROCESS  (Table) 
--
CREATE TABLE AR_GO_BIOLOGICAL_PROCESS ( PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, ACCESSION_NUMBER NUMBER NOT NULL, DESCRIPTION VARCHAR2(200 BYTE) NOT NULL, EVIDENCE VARCHAR2(100 BYTE) NOT NULL, GENECHIP_ARRAY VARCHAR2(50 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


