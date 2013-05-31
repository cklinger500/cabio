/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PID_ENTITYACCESSION CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_ENTITYACCESSION  (Table) 
--
CREATE TABLE ZSTG_PID_ENTITYACCESSION ( PHYSICALENTITY_ID NUMBER NOT NULL, DATABASE VARCHAR2(2500 BYTE) NOT NULL, ACCESSION VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


