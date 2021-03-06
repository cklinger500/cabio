/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PIDCTST_ACTIVITY_S on ZSTG_PID_FMLY_PRTPNT_ACTST(ACTIVITY_STATE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDCTST_MEMBER_ID on ZSTG_PID_FMLY_PRTPNT_ACTST(MEMBER_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDCTST_FAMILY_ID on ZSTG_PID_FMLY_PRTPNT_ACTST(FAMILY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
