/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_SEQGENE CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_SEQGENE  (Table) 
--
CREATE TABLE ZSTG_SEQGENE ( TAX_ID NUMBER NOT NULL, CHROMOSOME VARCHAR2(20 BYTE) NOT NULL, CHR_START NUMBER NOT NULL, CHR_STOP NUMBER NOT NULL, CHR_ORIENT VARCHAR2(50 BYTE) NOT NULL, CONTIG VARCHAR2(50 BYTE) NOT NULL, CTG_START NUMBER NOT NULL, CTG_STOP NUMBER NOT NULL, CTG_ORIENT VARCHAR2(50 BYTE) NOT NULL, FEATURE_NAME VARCHAR2(50 BYTE) NULL, FEATURE_ID VARCHAR2(50 BYTE) NULL, FEATURE_TYPE VARCHAR2(50 BYTE) NOT NULL, GROUP_LABEL VARCHAR2(250 BYTE) NOT NULL, TRANSCRIPT VARCHAR2(250 BYTE) NOT NULL, EVIDENCE_CODE VARCHAR2(250 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


