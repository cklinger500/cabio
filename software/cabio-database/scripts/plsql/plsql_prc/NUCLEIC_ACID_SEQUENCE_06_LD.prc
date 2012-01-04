CREATE OR REPLACE procedure NUCLEIC_ACID_SEQUENCE_06_LD as

BEGIN

   INSERT INTO NUCLEIC_ACID_SEQUENCE(ID, ACCESSION_NUMBER, VERSION, SEQUENCE_TYPE, CLONE_ID, VALUE, LENGTH)
   SELECT SEQUENCE_ID, ACCESSION_NUMBER, VERSION, SEQUENCE_TYPE, CLONE_ID, TO_LOB(ASCII_STRING), LENGTH from sequence
	WHERE Sequence_ID > 2500000 and Sequence_ID <= 3000000;

COMMIT;
END; 
/

