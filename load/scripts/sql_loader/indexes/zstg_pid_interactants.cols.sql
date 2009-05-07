
create index ZSTG_PIDANTS_INTERACTIO on ZSTG_PID_INTERACTANTS(INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDANTS_ORDER_OF_I on ZSTG_PID_INTERACTANTS(ORDER_OF_INTERACTANTS) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDANTS_PHYSICALEN on ZSTG_PID_INTERACTANTS(PHYSICALENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDANTS_ROLE on ZSTG_PID_INTERACTANTS(ROLE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
