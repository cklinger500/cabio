
create index ZSTG_ROLCGID_ROLECODE_lwr on ZSTG_ROLECODE_CGID(lower(ROLECODE)) PARALLEL NOLOGGING tablespace CABIO_MAP;

--EXIT;
