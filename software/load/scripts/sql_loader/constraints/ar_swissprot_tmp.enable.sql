
alter table AR_SWISSPROT_TMP enable constraint SYS_C0021068;
alter table AR_SWISSPROT_TMP enable constraint SYS_C0021068;
alter table AR_SWISSPROT_TMP enable constraint SYS_C0021068;
alter table AR_SWISSPROT_TMP enable constraint SYS_C004301;
alter table AR_SWISSPROT_TMP enable constraint SYS_C004302;
alter table AR_SWISSPROT_TMP enable constraint SYS_C004303;

alter table AR_SWISSPROT_TMP enable primary key;

--EXIT;
create unique index SYS_C0021068_idx on AR_SWISSPROT_TMP
(GENECHIP_ARRAY,SWISSPROT_ID,PROBE_SET_ID) tablespace CABIO_MAP_FUT;
alter table AR_SWISSPROT_TMP enable constraint SYS_C0021068 using index SYS_C0021068_idx;