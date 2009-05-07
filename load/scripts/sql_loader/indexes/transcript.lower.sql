
create index TRANSCRIRIPT_MANUFACTUR_lwr on TRANSCRIPT(lower(MANUFACTURER_ID)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index TRANSCRIRIPT_SOURCE_lwr on TRANSCRIPT(lower(SOURCE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index TRANSCRIRIPT_STRAND_lwr on TRANSCRIPT(lower(STRAND)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index TRANSCRIRIPT_PROBE_COUN_lwr on TRANSCRIPT(lower(PROBE_COUNT)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
