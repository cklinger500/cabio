DROP TABLE ZSTG_PID_ENTITYNAME CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_ENTITYNAME  (Table) 
--
CREATE TABLE ZSTG_PID_ENTITYNAME ( PHYSICALENTITY_ID NUMBER NOT NULL, NAMETYPE VARCHAR2(2500 BYTE) NOT NULL, NAME VARCHAR2(2500 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


