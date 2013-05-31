/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_ARRR_CH_ASSEMBLY_lwr on ZSTG_ARRAY_REPORTER_CH(lower(ASSEMBLY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_CYTO_STOP_lwr on ZSTG_ARRAY_REPORTER_CH(lower(CYTO_STOP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_CYTO_START_lwr on ZSTG_ARRAY_REPORTER_CH(lower(CYTO_START)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_STRAND_lwr on ZSTG_ARRAY_REPORTER_CH(lower(STRAND)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_PROBE_COUN_lwr on ZSTG_ARRAY_REPORTER_CH(lower(PROBE_COUNT)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_MANUFACTUR_lwr on ZSTG_ARRAY_REPORTER_CH(lower(MANUFACTURER_PSR_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_PHAST_CONS_lwr on ZSTG_ARRAY_REPORTER_CH(lower(PHAST_CONSERVATION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_TARGET_DES_lwr on ZSTG_ARRAY_REPORTER_CH(lower(TARGET_DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_TARGET_ID_lwr on ZSTG_ARRAY_REPORTER_CH(lower(TARGET_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_SEQUENCE_S_lwr on ZSTG_ARRAY_REPORTER_CH(lower(SEQUENCE_SOURCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_SEQUENCE_T_lwr on ZSTG_ARRAY_REPORTER_CH(lower(SEQUENCE_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_DISCRIMINA_lwr on ZSTG_ARRAY_REPORTER_CH(lower(DISCRIMINATOR)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_ARRR_CH_NAME_lwr on ZSTG_ARRAY_REPORTER_CH(lower(NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
