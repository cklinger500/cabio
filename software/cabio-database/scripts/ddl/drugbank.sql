/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

DROP TABLE AGENT_ALIAS;
CREATE TABLE AGENT_ALIAS
(
  ID          NUMBER,
  TYPE        VARCHAR2(32),
  NAME        VARCHAR2(512)
) TABLESPACE CABIO_FUT;

ALTER TABLE AGENT_ALIAS ADD (
    CONSTRAINT AGENT_ALIAS_PK
    PRIMARY KEY (ID) 
    USING INDEX TABLESPACE CABIO_FUT);

DROP TABLE AGENT_AGENT_ALIAS;
CREATE TABLE AGENT_AGENT_ALIAS
(
  AGENT_ID          NUMBER,
  AGENT_ALIAS_ID    NUMBER
) TABLESPACE CABIO_FUT;


DROP TABLE GENE_FUNCTION_ASSOC_EVIDENCE;
CREATE TABLE GENE_FUNCTION_ASSOC_EVIDENCE
(
  GENE_FUNCTION_ASSOC_ID  NUMBER,
  EVIDENCE_ID             NUMBER
) TABLESPACE CABIO_FUT;




