/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index NUCLEIC_ENCE_DISCRIMINA_lwr on NUCLEIC_ACID_SEQUENCE(lower(DISCRIMINATOR)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NUCLEIC_ENCE_DESCRIPTIO_lwr on NUCLEIC_ACID_SEQUENCE(lower(DESCRIPTION)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NUCLEIC_ENCE_SEQUENCE_T_lwr on NUCLEIC_ACID_SEQUENCE(lower(SEQUENCE_TYPE)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NUCLEIC_ENCE_VERSION_lwr on NUCLEIC_ACID_SEQUENCE(lower(VERSION)) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index NUCLEIC_ENCE_ACCESSION__lwr on NUCLEIC_ACID_SEQUENCE(lower(ACCESSION_NUMBER)) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
