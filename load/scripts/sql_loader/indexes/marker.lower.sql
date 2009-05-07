
create index MARKERRKER_NAME_lwr on MARKER(lower(NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MARKERRKER_MARKER_ID_lwr on MARKER(lower(MARKER_ID)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MARKERRKER_TYPE_lwr on MARKER(lower(TYPE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MARKERRKER_ACCNO_lwr on MARKER(lower(ACCNO)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
