ALTER TABLE HISTOLOGY_CODE
 DROP PRIMARY KEY CASCADE
/
DROP TABLE HISTOLOGY_CODE CASCADE CONSTRAINTS PURGE
/

--
-- HISTOLOGY_CODE  (Table) 
--
CREATE TABLE HISTOLOGY_CODE ( HISTOLOGY_CODE NUMBER NOT NULL, HISTOLOGY_NAME VARCHAR2(100 BYTE) NOT NULL, PARENT NUMBER NULL, CONCEPT_ID VARCHAR2(10 BYTE) NULL, RELATIONSHIP VARCHAR2(10 BYTE) NULL, BIG_ID VARCHAR2(200 BYTE) NULL, EVS_ID VARCHAR2(50 BYTE) NULL, CONSTRAINT PK_HISTOLOGY_CODE PRIMARY KEY (HISTOLOGY_CODE), CONSTRAINT DISEASEONTONODUPS UNIQUE (HISTOLOGY_NAME), CONSTRAINT HCBIGID UNIQUE (BIG_ID), UNIQUE (HISTOLOGY_CODE, HISTOLOGY_NAME, PARENT, CONCEPT_ID, EVS_ID, RELATIONSHIP) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


