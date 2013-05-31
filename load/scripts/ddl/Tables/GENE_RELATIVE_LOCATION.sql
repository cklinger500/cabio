/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE GENE_RELATIVE_LOCATION
 DROP PRIMARY KEY CASCADE
/
DROP TABLE GENE_RELATIVE_LOCATION CASCADE CONSTRAINTS PURGE
/

--
-- GENE_RELATIVE_LOCATION  (Table) 
--
--  Dependencies: 
--   GENE_TV (Table)
--   SNP_TV (Table)
--
CREATE TABLE GENE_RELATIVE_LOCATION ( ID NUMBER NOT NULL, ORIENTATION VARCHAR2(50 BYTE) NOT NULL, DISTANCE VARCHAR2(20 BYTE) NOT NULL, GENE_ID NUMBER NOT NULL, SNP_ID NUMBER NULL, PROBE_SET_ID VARCHAR2(100 BYTE) NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, TYPE VARCHAR2(50 BYTE) NOT NULL, CONSTRAINT GENE_REL_PK PRIMARY KEY (ID), UNIQUE (ORIENTATION, DISTANCE, GENE_ID, SNP_ID, PROBE_SET_ID, TYPE), CONSTRAINT GRLFK2 FOREIGN KEY (GENE_ID) REFERENCES GENE_TV (GENE_ID), FOREIGN KEY (SNP_ID) REFERENCES SNP_TV (ID) ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


