-- PROCEDURY
-- 1. Zaktualizuj pensje lekarzy pracuj�cych d�u�ej ni� p� roku, zwi�kszaj�c j� o kwot� podan� w argumencie.
CREATE PROCEDURE pensja @Kwota INT
	AS
	BEGIN
		UPDATE lekarze
		SET lekarze.lekarz_pensja = lekarze.lekarz_pensja + @Kwota
		WHERE DATEDIFF(DAYOFYEAR, lekarze.pracuje_od, GETDATE()) > 180
	END
 
--DROP PROCEDURE pensja
--EXEC pensja 300

--SELECT * FROM lekarze ORDER BY pracuje_od


-- 2. Dodaj nowego pacjenta (jako argumenty dane osobowe, nie pro� o dat� przyj�cia - wygeneruj automatycznie).
CREATE PROCEDURE dodaj_pacjenta @imie VARCHAR(25), @nazwisko VARCHAR(50), @pesel VARCHAR(11)
	AS
	BEGIN
		INSERT INTO pacjenci (pacjent_imie, pacjent_nazwisko, pacjent_pesel, pacjent_data_przyjecia)
		VALUES (@imie, @nazwisko, @pesel, GETDATE())
	END

--DROP PROCEDURE dodaj_pacjenta
--EXEC dodaj_pacjenta Aleksandra, Gandziarowska, 96111904684

--SELECT TOP 1 * FROM pacjenci ORDER BY pacjent_data_przyjecia DESC


-- 3. Usu� z historii leczenia terapie zako�czone przed dat� podan� w argumencie i pacjent�w kt�rzy przestali by� przypisani do jakiejkolwiek terapii.

--SELECT * FROM historia_leczenia WHERE leczenie_data_zak < '2016-09-30' ORDER BY leczenie_data_zak

DROP PROCEDURE usun_terapie

CREATE PROCEDURE usun_terapie @input DATE
	AS
	BEGIN
		DELETE FROM historia_leczenia
		WHERE historia_leczenia.leczenie_data_zak < @input
		DELETE FROM pacjenci
		WHERE pacjenci.pacjent_id  NOT IN (SELECT pacjent_id FROM historia_leczenia)

	END

--EXEC usun_zabieg '2016-09-30'

--SELECT * FROM historia_leczenia ORDER BY leczenie_data_zak
--SELECT * FROM pacjenci ORDER BY pacjent_id


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

--SELECT *, dbo.LiczNetto(lekarz_id) as pensja_netto FROM szpital.dbo.lekarze