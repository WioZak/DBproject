-- PROCEDURY
-- 1. Zaktualizuj pensje lekarzy pracuj�cych d�u�ej ni� p� roku, zwi�kszaj�c j� o kwot� podan� w argumencie.


-- 2. Dodaj nowego pacjenta (jako argumenty dane osobowe, nie pro� o dat� przyj�cia - wygeneruj automatycznie).


-- 3. Usu� z historii leczenia terapie zako�czone przed dat� podan� w argumencie i pacjent�w kt�rzy przestali by� przypisani do jakiejkolwiek terapii.



-- FUNKCJE
-- 1. Napisz funkcj�, kt�ra obliczy zarobek netto ka�dego lekarza w zale�no�ci od rodzaju umowy

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