
create index ZSTG_INTTION_INTERACTIO_lwr on ZSTG_INTERACTIONCONDITION(lower(INTERACTION_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTTION_SOURCE_ID_lwr on ZSTG_INTERACTIONCONDITION(lower(SOURCE_ID)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTTION_CONDITION__lwr on ZSTG_INTERACTIONCONDITION(lower(CONDITION_TYPE)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_INTTION_CONDITION_lwr on ZSTG_INTERACTIONCONDITION(lower(CONDITION)) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;