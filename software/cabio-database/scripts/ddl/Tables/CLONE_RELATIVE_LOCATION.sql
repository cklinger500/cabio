ALTER TABLE CLONE_RELATIVE_LOCATION
 DROP PRIMARY KEY CASCADE
/
DROP TABLE CLONE_RELATIVE_LOCATION CASCADE CONSTRAINTS PURGE
/

--
-- CLONE_RELATIVE_LOCATION  (Table) 
--
--  Dependencies: 
--   NUCLEIC_ACID_SEQUENCE (Table)
--   CLONE_TV (Table)
--
CREATE TABLE CLONE_RELATIVE_LOCATION ( ID NUMBER NOT NULL, TYPE VARCHAR2(50 BYTE) NOT NULL, CLONE_ID NUMBER NOT NULL, NUCLEIC_ACID_SEQUENCE_ID NUMBER NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT PK_CLONE_RELATIVE_LOCATION PRIMARY KEY (ID), UNIQUE (CLONE_ID, NUCLEIC_ACID_SEQUENCE_ID, TYPE), CONSTRAINT CLRFK2 FOREIGN KEY (NUCLEIC_ACID_SEQUENCE_ID) REFERENCES NUCLEIC_ACID_SEQUENCE (ID), CONSTRAINT CRLFK FOREIGN KEY (CLONE_ID) REFERENCES CLONE_TV (CLONE_ID) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


