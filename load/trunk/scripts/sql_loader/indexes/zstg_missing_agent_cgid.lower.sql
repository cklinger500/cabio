
create index ZSTG_MISCGID_DRUG_lwr on ZSTG_MISSING_AGENT_CGID(lower(DRUG)) PARALLEL NOLOGGING tablespace CABIO_MAP;
create index ZSTG_MISCGID_MATCHING_C_lwr on ZSTG_MISSING_AGENT_CGID(lower(MATCHING_CONCEPT)) PARALLEL NOLOGGING tablespace CABIO_MAP;
create index ZSTG_MISCGID_EVS_ID_lwr on ZSTG_MISSING_AGENT_CGID(lower(EVS_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP;

--EXIT;
