
create index PID_ENTISION_DATABASE_lwr on PID_ENTITY_ACCESSION(lower(DATABASE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_ENTISION_ACCESSION_lwr on PID_ENTITY_ACCESSION(lower(ACCESSION)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;