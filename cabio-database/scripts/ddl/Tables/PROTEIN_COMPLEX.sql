ALTER TABLE PROTEIN_COMPLEX
 DROP PRIMARY KEY CASCADE
/
DROP TABLE PROTEIN_COMPLEX CASCADE CONSTRAINTS PURGE
/

--
-- PROTEIN_COMPLEX  (Table) 
--
CREATE TABLE PROTEIN_COMPLEX ( COMPLEX_ID NUMBER NOT NULL, PID_ID NUMBER NULL, VALUE VARCHAR2(2500 BYTE) NULL, CONSTRAINT PROTEIN_COMPLEX_PK PRIMARY KEY (COMPLEX_ID), UNIQUE (PID_ID, VALUE, COMPLEX_ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

