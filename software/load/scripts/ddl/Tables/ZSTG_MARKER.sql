/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_MARKER CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_MARKER  (Table) 
--
CREATE TABLE ZSTG_MARKER ( ID NUMBER NOT NULL, NAME VARCHAR2(200 BYTE) NULL, MARKER_ID VARCHAR2(500 BYTE) NOT NULL, TYPE VARCHAR2(100 BYTE) NOT NULL, BIG_ID VARCHAR2(200 BYTE) NULL, TAXON_ID NUMBER NOT NULL, ACCNO VARCHAR2(2500 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


