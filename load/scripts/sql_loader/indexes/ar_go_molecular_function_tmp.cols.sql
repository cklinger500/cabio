/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_GO_MO_TMP_GENECHIP_A on AR_GO_MOLECULAR_FUNCTION_TMP(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MO_TMP_EVIDENCE on AR_GO_MOLECULAR_FUNCTION_TMP(EVIDENCE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MO_TMP_DESCRIPTIO on AR_GO_MOLECULAR_FUNCTION_TMP(DESCRIPTION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MO_TMP_ACCESSION_ on AR_GO_MOLECULAR_FUNCTION_TMP(ACCESSION_NUMBER) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_GO_MO_TMP_PROBE_SET_ on AR_GO_MOLECULAR_FUNCTION_TMP(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
