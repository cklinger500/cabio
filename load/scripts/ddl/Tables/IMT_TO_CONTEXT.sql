/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE IMT_TO_CONTEXT
 DROP PRIMARY KEY CASCADE
/
DROP TABLE IMT_TO_CONTEXT CASCADE CONSTRAINTS PURGE
/

--
-- IMT_TO_CONTEXT  (Table) 
--
CREATE TABLE IMT_TO_CONTEXT ( IMT_CODE NUMBER NULL, CONTEXT_CODE NUMBER NOT NULL, CONSTRAINT IMTCONPK PRIMARY KEY (IMT_CODE, CONTEXT_CODE) ) TABLESPACE CABIO_FUT LOGGING NOCOMPRESS NOCACHE PARALLEL ( DEGREE 4 INSTANCES 1 ) MONITORING
/


