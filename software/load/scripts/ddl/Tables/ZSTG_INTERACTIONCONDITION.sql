DROP TABLE ZSTG_INTERACTIONCONDITION CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_INTERACTIONCONDITION  (Table) 
--
CREATE TABLE ZSTG_INTERACTIONCONDITION ( INTERACTION_ID VARCHAR2(2500 BYTE) NOT NULL, SOURCE_ID VARCHAR2(2500 BYTE) NOT NULL, CONDITION_TYPE VARCHAR2(2500 BYTE) NOT NULL, CONDITION VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


