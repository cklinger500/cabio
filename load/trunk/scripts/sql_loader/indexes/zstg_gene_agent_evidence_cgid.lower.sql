
create index ZSTG_GENCGID_ROLE_ID_lwr on ZSTG_GENE_AGENT_EVIDENCE_CGID(lower(ROLE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP;

--EXIT;
