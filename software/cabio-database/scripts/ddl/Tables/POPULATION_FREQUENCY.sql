ALTER TABLE POPULATION_FREQUENCY
 DROP PRIMARY KEY CASCADE
/
DROP TABLE POPULATION_FREQUENCY CASCADE CONSTRAINTS PURGE
/

--
-- POPULATION_FREQUENCY  (Table) 
--
CREATE TABLE POPULATION_FREQUENCY ( ID NUMBER NOT NULL, TYPE VARCHAR2(50 BYTE) NOT NULL, ETHNICITY VARCHAR2(50 BYTE) NOT NULL, MAJOR_FREQUENCY NUMBER NOT NULL, MINOR_FREQUENCY NUMBER NOT NULL, HETEROZYGOUS_FREQUENCY NUMBER NOT NULL, SNP_ID NUMBER NOT NULL, MAJOR_ALLELE VARCHAR2(30 BYTE) NULL, MINOR_ALLELE VARCHAR2(30 BYTE) NULL, BIG_ID VARCHAR2(200 BYTE) NULL, SNP_PROBESET_AFFY_ID VARCHAR2(100 BYTE) NOT NULL, PRIMARY KEY (ID), CONSTRAINT PFBIGID UNIQUE (BIG_ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


