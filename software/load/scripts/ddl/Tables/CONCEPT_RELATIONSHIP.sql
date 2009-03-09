ALTER TABLE CONCEPT_RELATIONSHIP
 DROP PRIMARY KEY CASCADE
/
DROP TABLE CONCEPT_RELATIONSHIP CASCADE CONSTRAINTS PURGE
/

--
-- CONCEPT_RELATIONSHIP  (Table) 
--
CREATE TABLE CONCEPT_RELATIONSHIP ( PARENT_ID NUMBER NOT NULL, CHILD_ID NUMBER NOT NULL, RELATIONSHIP VARCHAR2(100 BYTE) NOT NULL, PRIMARY KEY (PARENT_ID, CHILD_ID, RELATIONSHIP) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


