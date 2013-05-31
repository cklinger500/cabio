/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create unique index SYS_C0021058_idx on AR_OMIM_ID_TMP
(GENECHIP_ARRAY,OMIM_ID,PROBE_SET_ID) tablespace CABIO_MAP_FUT;
alter table AR_OMIM_ID_TMP enable constraint SYS_C0021058 using index SYS_C0021058_idx;

alter table AR_OMIM_ID_TMP enable constraint SYS_C0021058;
alter table AR_OMIM_ID_TMP enable constraint SYS_C0021058;
alter table AR_OMIM_ID_TMP enable constraint SYS_C0021058;
alter table AR_OMIM_ID_TMP enable constraint SYS_C004261;
alter table AR_OMIM_ID_TMP enable constraint SYS_C004262;
alter table AR_OMIM_ID_TMP enable constraint SYS_C004263;

alter table AR_OMIM_ID_TMP enable primary key;

--EXIT;
