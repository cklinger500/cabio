
alter table ZSTG_GENE_AGENT_EVIDENCE_CGID enable constraint GAER_PK;
alter table ZSTG_GENE_AGENT_EVIDENCE_CGID enable constraint GAER_PK;
alter table ZSTG_GENE_AGENT_EVIDENCE_CGID enable constraint GAER_PK;
alter table ZSTG_GENE_AGENT_EVIDENCE_CGID enable constraint GAER_PK;

alter table ZSTG_GENE_AGENT_EVIDENCE_CGID enable primary key;

--EXIT;
create unique index GAER_PK_idx on ZSTG_GENE_AGENT_EVIDENCE_CGID
(ROLE_ID,EVIDENCE_ID,AGENT_ID,GENE_ID) tablespace CABIO_MAP_FUT;
alter table ZSTG_GENE_AGENT_EVIDENCE_CGID enable constraint GAER_PK using index GAER_PK_idx;