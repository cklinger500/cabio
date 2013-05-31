/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PID_COMPL_PARTICIPANT_LOC CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_COMPL_PARTICIPANT_LOC  (Table) 
--
CREATE TABLE ZSTG_PID_COMPL_PARTICIPANT_LOC ( COMPLEX_COMPONENT_ID NUMBER NOT NULL, ORDER_OF_COMPLEX VARCHAR2(2500 BYTE) NOT NULL, LOCATION VARCHAR2(2500 BYTE) NOT NULL, XREF VARCHAR2(2500 BYTE) NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


