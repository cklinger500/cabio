DROP TABLE ZSTG_PID_FMLY_PRTPNT_PTM CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_FMLY_PRTPNT_PTM  (Table) 
--
CREATE TABLE ZSTG_PID_FMLY_PRTPNT_PTM ( FAMILY_ID NUMBER NOT NULL, MEMBER_ID NUMBER NOT NULL, PTM VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


