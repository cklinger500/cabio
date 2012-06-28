ALTER TABLE SNP_REPORTER
 DROP PRIMARY KEY CASCADE
/
DROP TABLE SNP_REPORTER CASCADE CONSTRAINTS PURGE
/

--
-- SNP_REPORTER  (Table) 
--
--  Dependencies: 
--   MICROARRAY (Table)
--
CREATE TABLE SNP_REPORTER ( ID NUMBER NOT NULL, NAME VARCHAR2(50 BYTE) NOT NULL, MICROARRAY_ID NUMBER NOT NULL, SNP_ID NUMBER NULL, PHAST_CONSERVATION VARCHAR2(30 BYTE) NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT SNP_REPORTER_PK PRIMARY KEY (ID), CONSTRAINT SNPREPBIGID UNIQUE (BIG_ID), UNIQUE (NAME, MICROARRAY_ID, SNP_ID, PHAST_CONSERVATION), FOREIGN KEY (MICROARRAY_ID) REFERENCES MICROARRAY (ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

