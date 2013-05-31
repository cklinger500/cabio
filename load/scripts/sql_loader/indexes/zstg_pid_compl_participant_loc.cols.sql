/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PID_LOC_XREF on ZSTG_PID_COMPL_PARTICIPANT_LOC(XREF) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_LOC_LOCATION on ZSTG_PID_COMPL_PARTICIPANT_LOC(LOCATION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_LOC_ORDER_OF_C on ZSTG_PID_COMPL_PARTICIPANT_LOC(ORDER_OF_COMPLEX) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PID_LOC_COMPLEX_CO on ZSTG_PID_COMPL_PARTICIPANT_LOC(COMPLEX_COMPONENT_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
