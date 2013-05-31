/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE ZSTG_MOUSE_CYTOBAND CASCADE CONSTRAINTS PURGE
/

--
-- ZSTG_MOUSE_CYTOBAND  (Table) 
--
CREATE TABLE ZSTG_MOUSE_CYTOBAND ( CHROM VARCHAR2(25 BYTE) NOT NULL, CHROMSTART NUMBER(10) NOT NULL, CHROMEND NUMBER(10) NOT NULL, CYTONAME VARCHAR2(25 BYTE) NOT NULL, STAIN VARCHAR2(255 BYTE) NOT NULL, CHROMOSOME_NO VARCHAR2(20 BYTE) NOT NULL, CHROMOSOME_ID NUMBER NOT NULL, ID NVARCHAR2(20) NOT NULL, CYTOBAND VARCHAR2(100 BYTE) NOT NULL, CONSTRAINT CYTOBAND_M_UNIQ UNIQUE (CYTOBAND), CONSTRAINT MOUSE_CYT_ID UNIQUE (ID) ) TABLESPACE CABIO_MAP_FUT LOGGING NOCOMPRESS NOCACHE NOPARALLEL MONITORING
/


