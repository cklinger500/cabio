/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE EXPRESSION_REPORTER
 DROP PRIMARY KEY CASCADE
/
DROP TABLE EXPRESSION_REPORTER CASCADE CONSTRAINTS PURGE
/

--
-- EXPRESSION_REPORTER  (Table) 
--
--  Dependencies: 
--   NUCLEIC_ACID_SEQUENCE (Table)
--   GENE_TV (Table)
--   MICROARRAY (Table)
--
CREATE TABLE EXPRESSION_REPORTER ( ID NUMBER NOT NULL, NAME VARCHAR2(4000 BYTE) NOT NULL, MICROARRAY_ID NUMBER NOT NULL, SEQUENCE_TYPE VARCHAR2(20 BYTE) NULL, SEQUENCE_SOURCE VARCHAR2(50 BYTE) NULL, TRANSCRIPT_ID VARCHAR2(100 BYTE) NULL, TARGET_DESCRIPTION VARCHAR2(2000 BYTE) NULL, GENE_ID NUMBER NULL, NAS_ID NUMBER NULL, BIG_ID VARCHAR2(200 BYTE) NULL, CONSTRAINT EXPR_REPORTER_PK PRIMARY KEY (ID), CONSTRAINT EXPRREPBIGID UNIQUE (BIG_ID), UNIQUE (NAME, MICROARRAY_ID, SEQUENCE_TYPE, SEQUENCE_SOURCE, TRANSCRIPT_ID, TARGET_DESCRIPTION, GENE_ID, NAS_ID), CONSTRAINT EXPREPNASFK FOREIGN KEY (NAS_ID) REFERENCES NUCLEIC_ACID_SEQUENCE (ID), CONSTRAINT EXPRREPFK1 FOREIGN KEY (GENE_ID) REFERENCES GENE_TV (GENE_ID), CONSTRAINT EXPRREPFK2 FOREIGN KEY (MICROARRAY_ID) REFERENCES MICROARRAY (ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


