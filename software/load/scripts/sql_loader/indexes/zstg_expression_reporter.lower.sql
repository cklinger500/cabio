/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_EXPRTER_ASSEMBLY_lwr on ZSTG_EXPRESSION_REPORTER(lower(ASSEMBLY)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_CYTO_STOP_lwr on ZSTG_EXPRESSION_REPORTER(lower(CYTO_STOP)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_CYTO_START_lwr on ZSTG_EXPRESSION_REPORTER(lower(CYTO_START)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_TARGET_DES_lwr on ZSTG_EXPRESSION_REPORTER(lower(TARGET_DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_TRANSCRIPT_lwr on ZSTG_EXPRESSION_REPORTER(lower(TRANSCRIPT_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_SEQUENCE_S_lwr on ZSTG_EXPRESSION_REPORTER(lower(SEQUENCE_SOURCE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_SEQUENCE_T_lwr on ZSTG_EXPRESSION_REPORTER(lower(SEQUENCE_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_EXPRTER_NAME_lwr on ZSTG_EXPRESSION_REPORTER(lower(NAME)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
