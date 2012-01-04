DROP TABLE ZSTG_MOLECULEPARTS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_MOLECULEPARTS  (Table) 
--
CREATE TABLE ZSTG_MOLECULEPARTS ( MOLECULE_ID VARCHAR2(2500 BYTE) NOT NULL, MTYPE VARCHAR2(2500 BYTE) NOT NULL, WHOLE_MOLECULE_ID VARCHAR2(2500 BYTE) NOT NULL, PART_MOLECULE_ID VARCHAR2(2500 BYTE) NOT NULL, MSTART VARCHAR2(2500 BYTE) NULL, MSTOP VARCHAR2(2500 BYTE) NULL, SOURCE_ID VARCHAR2(20 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


