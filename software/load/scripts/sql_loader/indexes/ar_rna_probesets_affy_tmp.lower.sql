/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index AR_RNA_P_TMP_ANNOTATION_lwr on AR_RNA_PROBESETS_AFFY_TMP(lower(ANNOTATION_DATA)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_SPECIES_SC_lwr on AR_RNA_PROBESETS_AFFY_TMP(lower(SPECIES_SCIENTIFIC_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_GENECHIP_A_lwr on AR_RNA_PROBESETS_AFFY_TMP(lower(GENECHIP_ARRAY_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_RNA_P_TMP_PROBE_SET__lwr on AR_RNA_PROBESETS_AFFY_TMP(lower(PROBE_SET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
