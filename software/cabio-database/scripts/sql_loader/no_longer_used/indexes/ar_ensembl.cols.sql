/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_ENSEMEMBL_GENECHIP_A on AR_ENSEMBL(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ENSEMEMBL_ENSEMBL_ID on AR_ENSEMBL(ENSEMBL_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ENSEMEMBL_PROBE_SET_ on AR_ENSEMBL(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
