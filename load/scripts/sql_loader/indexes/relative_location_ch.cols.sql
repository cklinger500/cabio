/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index RELATIVEN_CH_DISCRIMINA on RELATIVE_LOCATION_CH(DISCRIMINATOR) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_GENE_ID on RELATIVE_LOCATION_CH(GENE_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_PROBE_SET_ on RELATIVE_LOCATION_CH(PROBE_SET_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_SNP_ID on RELATIVE_LOCATION_CH(SNP_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_DISTANCE on RELATIVE_LOCATION_CH(DISTANCE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_ORIENTATIO on RELATIVE_LOCATION_CH(ORIENTATION) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_TYPE on RELATIVE_LOCATION_CH(TYPE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index RELATIVEN_CH_ID on RELATIVE_LOCATION_CH(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
