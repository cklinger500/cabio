/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ZSTG_GENE_AGENT_CGID
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_GENE_AGENT_CGID CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE_AGENT_CGID  (Table) 
--
CREATE TABLE ZSTG_GENE_AGENT_CGID ( GENE_ID NUMBER NOT NULL, AGENT_ID NUMBER NOT NULL, PRIMARY KEY (GENE_ID, AGENT_ID) ) TABLESPACE CABIO_MAP_FUT NOLOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


