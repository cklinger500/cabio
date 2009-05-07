
create index AR_ALIGN_TMP_PROBE_SET_ on AR_ALIGNMENTS_TMP(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_CHROMOSOME on AR_ALIGNMENTS_TMP(CHROMOSOME) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_START_POSI on AR_ALIGNMENTS_TMP(START_POSITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_END_POSITI on AR_ALIGNMENTS_TMP(END_POSITION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_DIRECTION on AR_ALIGNMENTS_TMP(DIRECTION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_TRIM_CHR on AR_ALIGNMENTS_TMP(TRIM_CHR) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_ASSEMBLY on AR_ALIGNMENTS_TMP(ASSEMBLY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_GENECHIP_A on AR_ALIGNMENTS_TMP(GENECHIP_ARRAY) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index AR_ALIGN_TMP_CHROMOSOME on AR_ALIGNMENTS_TMP(CHROMOSOME_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
