/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_PID_INTERACTANTS CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_PID_INTERACTANTS  (Table) 
--
CREATE TABLE ZSTG_PID_INTERACTANTS ( INTERACTION_ID NUMBER NOT NULL, ORDER_OF_INTERACTANTS NUMBER NOT NULL, PHYSICALENTITY_ID NUMBER NOT NULL, ROLE VARCHAR2(2500 BYTE) NOT NULL ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


