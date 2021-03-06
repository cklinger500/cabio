/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

CREATE OR REPLACE procedure DISEASE_RELATIONSHIP31_LD as

  CURSOR DISEASERELATIONSHIPCUR IS
  (SELECT ROWNUM,
	  HISTOLOGY_CODE,
          PARENT,
          RELATIONSHIP
   FROM HISTOLOGY_CODE);

  aID number:=0;

BEGIN

   EXECUTE IMMEDIATE('TRUNCATE TABLE DISEASE_RELATIONSHIP REUSE STORAGE ');

   FOR aRec in DISEASERELATIONSHIPCUR LOOP

      aID := aID + 1;

      INSERT INTO DISEASE_RELATIONSHIP(ID, CHILD_ID, PARENT_ID, RELATIONSHIP)
      VALUES (aRec.ROWNUM,
              aRec.HISTOLOGY_CODE,
              aRec.PARENT,
              aRec.RELATIONSHIP);

      IF MOD(aID, 500) = 0 THEN
         COMMIT;
      END IF;

   END LOOP;

COMMIT;

END; 
/

