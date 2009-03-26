
create index GENERIC_RTER_CLUSTER_ID_lwr on GENERIC_REPORTER(lower(CLUSTER_ID)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENERIC_RTER_TYPE_lwr on GENERIC_REPORTER(lower(TYPE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index GENERIC_RTER_NAME_lwr on GENERIC_REPORTER(lower(NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;