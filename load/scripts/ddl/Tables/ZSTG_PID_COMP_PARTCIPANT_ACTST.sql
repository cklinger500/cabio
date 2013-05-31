/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PID_COMP_PARTCIPANT_ACTST CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_COMP_PARTCIPANT_ACTST  (Table) 
--
CREATE TABLE ZSTG_PID_COMP_PARTCIPANT_ACTST ( COMPLEX_ID NUMBER NOT NULL, ORDER_OF_COMPLEX NUMBER NOT NULL, ACTIVITY_STATE VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


