
create index ZSTG_PIDNENT_COMPONENT_ on ZSTG_PID_COMPLEX_COMPONENT(COMPONENT_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDNENT_PID_COMPLE on ZSTG_PID_COMPLEX_COMPONENT(PID_COMPLEX_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDNENT_ORDER_OF_C on ZSTG_PID_COMPLEX_COMPONENT(ORDER_OF_COMPLEX) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDNENT_PID_COMPON on ZSTG_PID_COMPLEX_COMPONENT(PID_COMPONENT_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDNENT_COMPLEX_ID on ZSTG_PID_COMPLEX_COMPONENT(COMPLEX_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
