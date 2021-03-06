/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

ALTER TABLE ZSTG_GENE_ONTOLOGY
 DROP PRIMARY KEY CASCADE
/
DROP TABLE ZSTG_GENE_ONTOLOGY CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_GENE_ONTOLOGY  (Table) 
--
CREATE TABLE ZSTG_GENE_ONTOLOGY ( GO_ID NUMBER NOT NULL, ORGANISM NUMBER NOT NULL, LOCUS_ID VARCHAR2(20 BYTE) NOT NULL, PRIMARY KEY (GO_ID, ORGANISM, LOCUS_ID) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


