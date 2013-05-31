/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index PID_INTETION_PID_INTERA on PID_INTERACTION(PID_INTERACTION_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_INTETION_REF_PATHWA on PID_INTERACTION(REF_PATHWAY_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_INTETION_DISCRIMINA on PID_INTERACTION(DISCRIMINATOR) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_INTETION_MACRO_NAME on PID_INTERACTION(MACRO_NAME) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_INTETION_SOURCE on PID_INTERACTION(SOURCE) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index PID_INTETION_ID on PID_INTERACTION(ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
