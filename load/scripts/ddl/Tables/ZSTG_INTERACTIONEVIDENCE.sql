DROP TABLE ZSTG_INTERACTIONEVIDENCE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_INTERACTIONEVIDENCE  (Table) 
--
CREATE TABLE ZSTG_INTERACTIONEVIDENCE ( INTERACTION_ID VARCHAR2(2500 BYTE) NOT NULL, SOURCE_ID VARCHAR2(2500 BYTE) NOT NULL, EVIDENCECODE VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

