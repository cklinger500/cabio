ALTER TABLE PROTEIN_ALIAS
 DROP PRIMARY KEY CASCADE
/
DROP TABLE PROTEIN_ALIAS CASCADE CONSTRAINTS PURGE
/

--
-- PROTEIN_ALIAS  (Table) 
--
--  Dependencies: 
--   NEW_PROTEIN (Table)
--
CREATE TABLE PROTEIN_ALIAS ( ID NUMBER NOT NULL, PROTEIN_ID NUMBER NOT NULL, NAME VARCHAR2(500 BYTE) NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT PAPK PRIMARY KEY (ID), CONSTRAINT PABIGID UNIQUE (BIG_ID), UNIQUE (PROTEIN_ID, NAME) DISABLE, CONSTRAINT PAFK FOREIGN KEY (PROTEIN_ID) REFERENCES NEW_PROTEIN (PROTEIN_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


