
create index PROTOCOLCOLS_ID on PROTOCOLS(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_DOCUMENT_N on PROTOCOLS(DOCUMENT_NUMBER) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_TITLE on PROTOCOLS(TITLE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_PHASE on PROTOCOLS(PHASE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_PARTICIPAT on PROTOCOLS(PARTICIPATION_TYPE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_TREATMENT_ on PROTOCOLS(TREATMENT_FLAG) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_NIH_ADMIN_ on PROTOCOLS(NIH_ADMIN_CODE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_CURRENT_ST on PROTOCOLS(CURRENT_STATUS) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_CURRENT_ST on PROTOCOLS(CURRENT_STATUS_DATE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_LEAD_ORGAN on PROTOCOLS(LEAD_ORGANIZATION_CTEP_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_LEAD_ORGAN on PROTOCOLS(LEAD_ORGANIZATION_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_PI_NAME on PROTOCOLS(PI_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_REVIEWER_N on PROTOCOLS(REVIEWER_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PROTOCOLCOLS_PDQ_PROTOC on PROTOCOLS(PDQ_PROTOCOL_CODE) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
