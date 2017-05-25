-- PROCEDURY
-- 1. Zaktualizuj pensje lekarzy pracuj¹cych d³u¿ej ni¿ pó³ roku, zwiêkszaj¹c j¹ o kwotê podan¹ w argumencie.


-- 2. Dodaj nowego pacjenta (jako argumenty dane osobowe, nie proœ o datê przyjêcia - wygeneruj automatycznie).


-- 3. Usuñ z historii leczenia terapie zakoñczone przed dat¹ podan¹ w argumencie i pacjentów którzy przestali byæ przypisani do jakiejkolwiek terapii.



-- FUNKCJE
-- 1. Napisz funkcjê, która obliczy zarobek netto ka¿dego lekarza w zale¿noœci od rodzaju umowy

CREATE FUNCTION dbo.LiczNetto(@LekarzID INT)
  RETURNS FLOAT
  AS
  BEGIN
	DECLARE @NETTO FLOAT;
	DECLARE @BRUTTO FLOAT;
	DECLARE @UOP BIT;
		
	SET @BRUTTO = (SELECT lekarz_pensja
			 FROM szpital.dbo.lekarze
			 WHERE lekarz_id = @LekarzID
			 );
			 
	SET @UOP = (SELECT uop 
			 FROM szpital.dbo.lekarze
			 WHERE lekarz_id = @LekarzID)
	IF(@UOP = 1) BEGIN
		SET @NETTO = @BRUTTO * 0.75;
	END
	ELSE BEGIN
		SET @NETTO = @BRUTTO * 0.82;
	END
	RETURN @NETTO;
  END
GO

SELECT *, dbo.LiczNetto(lekarz_id) as pensja_netto
FROM szpital.dbo.lekarze