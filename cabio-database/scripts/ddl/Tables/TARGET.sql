ALTER TABLE TARGET
 DROP PRIMARY KEY CASCADE
/
DROP TABLE TARGET CASCADE CONSTRAINTS PURGE
/

--
-- TARGET  (Table) 
--
CREATE TABLE TARGET ( TARGET_ID NUMBER NOT NULL, TARGET_TYPE CHAR(100 BYTE) NOT NULL, TARGET_NAME VARCHAR2(100 BYTE) NOT NULL, LOCUS_ID NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CHECK ("BIG_ID" IS NOT NULL) DISABLE, CONSTRAINT PK_TARGET PRIMARY KEY (TARGET_ID), UNIQUE (TARGET_TYPE, TARGET_NAME, LOCUS_ID), CONSTRAINT TARGETBIGID UNIQUE (BIG_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/

