DROP TABLE ZSTG_EVS_CONCEPT_RELATIONSHIP CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_EVS_CONCEPT_RELATIONSHIP  (Table) 
--
CREATE TABLE ZSTG_EVS_CONCEPT_RELATIONSHIP ( PARENT_ID VARCHAR2(10 BYTE) NOT NULL, CHILD_ID VARCHAR2(10 BYTE) NULL, RELATIONSHIP_TYPE VARCHAR2(30 BYTE) NULL, ID VARCHAR2(50 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


