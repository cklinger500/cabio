/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_SEQQSTS_WEIGHT_lwr on ZSTG_SEQSTS(lower(WEIGHT)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_GROUP_LABE_lwr on ZSTG_SEQSTS(lower(GROUP_LABEL)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_FEATURE_TY_lwr on ZSTG_SEQSTS(lower(FEATURE_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_FEATURE_ID_lwr on ZSTG_SEQSTS(lower(FEATURE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_FEATURE_NA_lwr on ZSTG_SEQSTS(lower(FEATURE_NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_CTG_ORIENT_lwr on ZSTG_SEQSTS(lower(CTG_ORIENT)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_CONTIG_lwr on ZSTG_SEQSTS(lower(CONTIG)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_CHR_ORIENT_lwr on ZSTG_SEQSTS(lower(CHR_ORIENT)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_SEQQSTS_CHROMOSOME_lwr on ZSTG_SEQSTS(lower(CHROMOSOME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;