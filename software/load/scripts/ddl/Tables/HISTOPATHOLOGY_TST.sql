ALTER TABLE HISTOPATHOLOGY_TST
 DROP PRIMARY KEY CASCADE
/
DROP TABLE HISTOPATHOLOGY_TST CASCADE CONSTRAINTS PURGE
/

--
-- HISTOPATHOLOGY_TST  (Table) 
--
CREATE TABLE HISTOPATHOLOGY_TST ( HISTOPATHOLOGY_ID NUMBER NULL, TISSUE_CODE NUMBER NULL, HISTOLOGY_CODE NUMBER NULL, SURVIVALINFO VARCHAR2(255 BYTE) NULL, TUMORINCIDENCERATE NUMBER NULL, COMMENTS VARCHAR2(2000 BYTE) NULL, RELATIONALOPERATION VARCHAR2(50 BYTE) NULL, MICROSCOPICDESCRIPTION VARCHAR2(2000 BYTE) NULL, GROSSDESCRIPTION VARCHAR2(2000 BYTE) NULL, AGEOFONSET VARCHAR2(255 BYTE) NULL, ORGAN_ID VARCHAR2(50 BYTE) NULL, METASTASISOF NUMBER NULL, ANIMALMODEL_ID NUMBER NULL, BIG_ID VARCHAR2(200 BYTE) NULL, PRIMARY KEY (HISTOPATHOLOGY_ID), CONSTRAINT HISTOBIGID UNIQUE (BIG_ID), UNIQUE (TISSUE_CODE, HISTOLOGY_CODE) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

