
create index PID_PARTPANT_DISCRIMINA_lwr on PID_PARTICIPANT(lower(DISCRIMINATOR)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_CONDITION__lwr on PID_PARTICIPANT(lower(CONDITION_NAME)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_ACTIVITY_S_lwr on PID_PARTICIPANT(lower(ACTIVITY_STATE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_PTM_lwr on PID_PARTICIPANT(lower(PTM)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_PARTPANT_LOCATION_lwr on PID_PARTICIPANT(lower(LOCATION)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
