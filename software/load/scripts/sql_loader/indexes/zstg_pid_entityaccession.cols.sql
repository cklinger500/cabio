/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index ZSTG_PIDSION_ACCESSION on ZSTG_PID_ENTITYACCESSION(ACCESSION) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDSION_DATABASE on ZSTG_PID_ENTITYACCESSION(DATABASE) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;
create index ZSTG_PIDSION_PHYSICALEN on ZSTG_PID_ENTITYACCESSION(PHYSICALENTITY_ID) PARALLEL NOLOGGING tablespace CABIO_MAP_FUT;

--EXIT;
