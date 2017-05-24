-- PROCEDURY
-- 1.


-- 2.


-- 3.



-- FUNKCJE
-- 1. Napisz funkcjê, która obliczy zarobek netto ka¿dego lekarza

CREATE FUNCTION dbo.LiczNetto(@LekarzID INT, @PODATEK FLOAT)
  RETURNS FLOAT
  AS
  BEGIN
	DECLARE @NETTO FLOAT;
	DECLARE @BRUTTO FLOAT;
		
	SET @BRUTTO = (SELECT lekarz_pensja
			 FROM szpital.dbo.lekarze
			 WHERE lekarz_id = @LekarzID
			 );
			 
	SET @NETTO = @BRUTTO * (1 - @PODATEK);
	
	RETURN @NETTO;
  END
GO

SELECT *, dbo.LiczNetto(lekarz_id, 0.18) as pensja_netto
FROM szpital.dbo.lekarze