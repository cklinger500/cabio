/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index PROTOCOLASES_CONCEPT_ID_lwr on PROTOCOL_DISEASES(lower(CONCEPT_ID)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_DISEASE_CA_lwr on PROTOCOL_DISEASES(lower(DISEASE_CATEGORY)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_DISEASE_SU_lwr on PROTOCOL_DISEASES(lower(DISEASE_SUB_CATEGORY)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLASES_CTEP_NAME_lwr on PROTOCOL_DISEASES(lower(CTEP_NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
