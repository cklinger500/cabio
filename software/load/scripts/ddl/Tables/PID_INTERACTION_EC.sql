/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE PID_INTERACTION_EC
 DROP PRIMARY KEY CASCADE
/
DROP TABLE PID_INTERACTION_EC CASCADE CONSTRAINTS PURGE
/

--
-- PID_INTERACTION_EC  (Table) 
--
--  Dependencies: 
--   PID_INTERACTION (Table)
--   EVIDENCE_CODE (Table)
--
CREATE TABLE PID_INTERACTION_EC ( INTERACTION_ID NUMBER NOT NULL, EVIDENCE_CODE_ID NUMBER NOT NULL, PRIMARY KEY (INTERACTION_ID, EVIDENCE_CODE_ID), FOREIGN KEY (INTERACTION_ID) REFERENCES PID_INTERACTION (ID), FOREIGN KEY (EVIDENCE_CODE_ID) REFERENCES EVIDENCE_CODE (ID) DISABLE ) TABLESPACE CABIO_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


