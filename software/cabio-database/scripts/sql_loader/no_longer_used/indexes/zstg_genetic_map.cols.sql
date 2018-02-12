/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_GEN_MAP_SECOND_MAR on ZSTG_GENETIC_MAP(SECOND_MARKER_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_SECOND_MAR on ZSTG_GENETIC_MAP(SECOND_MARKER_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_FIRST_MARK on ZSTG_GENETIC_MAP(FIRST_MARKER_NAME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_FIRST_MARK on ZSTG_GENETIC_MAP(FIRST_MARKER_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_DISTANCE on ZSTG_GENETIC_MAP(DISTANCE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_PROBE_SET_ on ZSTG_GENETIC_MAP(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_TYPE on ZSTG_GENETIC_MAP(TYPE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_SECOND_SNP on ZSTG_GENETIC_MAP(SECOND_SNP_TSC_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_GEN_MAP_FIRST_SNP_ on ZSTG_GENETIC_MAP(FIRST_SNP_TSC_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;