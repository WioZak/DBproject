-- WYZWALACZE
-- 1. Nie pozw�l na usuni�cie niezako�czonej terapii. Wy�wietl odpowiedni komunikat. Udowodnij dzia�anie wyzwalacza (przed/po).
--DROP TRIGGER usuwanie_niezakonczonego_leczenia

USE SZPITAL
GO
CREATE TRIGGER usuwanie_niezakonczonej_terapii
ON szpital.dbo.historia_leczenia
INSTEAD OF DELETE
AS
BEGIN
DECLARE @data_zak DATE
DECLARE @leczenie_id INT

SELECT @data_zak = deleted.leczenie_data_zak FROM deleted
SELECT @leczenie_id = deleted.leczenie_id FROM deleted

	IF (@data_zak is NULL)
		BEGIN
			PRINT 'Nie mo�na usun�� niezako�czonej terapii. Nie usuni�to terapii o id ' + CAST(@leczenie_id AS VARCHAR)
		END
END

DELETE FROM historia_leczenia WHERE leczenie_id = 34

-- 2. Zabro� zmiany pensji lekarza na mniejsz� od pensji minimalnej. Wy�wietl komunikat. Udowodnij dzia�anie wyzwalacza (przed/po).
--DROP TRIGGER minimalna_pensja

USE SZPITAL
GO
CREATE TRIGGER minimalna_pensja
ON lekarze
INSTEAD OF UPDATE
AS
BEGIN

DECLARE @lekarz_pensja MONEY
DECLARE @lekarz_id INT

SELECT @lekarz_pensja = inserted.lekarz_pensja FROM inserted
SELECT @lekarz_id = inserted.lekarz_id FROM inserted

	IF (@lekarz_pensja < 2500)
		BEGIN
			PRINT 'Lekarz nie mo�e zarabia� mniej ni� minimaln� pensj�. Pensja lekarza o id ' + CAST(@lekarz_id AS VARCHAR) + ' nie zosta�a zaktualizowana.'
		END
		
END

UPDATE lekarze SET lekarz_pensja = '500' WHERE lekarz_id = 1

-- 3. Je�li podczas dodawania nowego lekarza nie zostanie podana specjalizacja i/lub PESEL, wype�nij te pola odpowiednio: "Nie podano" oraz "00000000000". Wy�wietl komunikat. Udowodnij dzia�anie wyzwalacza (przed/po).
-- DROP TRIGGER dodanie_lekarza
USE SZPITAL
GO
CREATE TRIGGER dodanie_lekarza
ON lekarze
AFTER INSERT
AS
BEGIN

DECLARE @lekarz_specjalizacja VARCHAR(50)
DECLARE @lekarz_pesel VARCHAR(11)
DECLARE @lekarz_id INT

SELECT @lekarz_specjalizacja = lekarz_specjalizacja FROM inserted
SELECT @lekarz_pesel = inserted.lekarz_pesel FROM inserted
SELECT @lekarz_id = inserted.lekarz_id FROM inserted

	IF (@lekarz_specjalizacja IS NULL)
		BEGIN
			UPDATE lekarze SET lekarz_specjalizacja = 'Nie podano' WHERE lekarz_id = @lekarz_id
			PRINT 'Nie podano specjalizacji dla lekarza o id ' + CAST(@lekarz_id AS VARCHAR) + '.'
		END
	IF (@lekarz_pesel IS NULL)
		BEGIN
			UPDATE lekarze SET lekarz_pesel = '00000000000' WHERE lekarz_id = @lekarz_id
			PRINT 'Nie podano nr PESEL dla lekarza o id ' + CAST(@lekarz_id AS VARCHAR) + '.'
		END
		
END

INSERT INTO lekarze (lekarz_imie, lekarz_nazwisko, lekarz_pensja, lekarz_tytul, oddzial_id) VALUES ('Antoni', 'Makowski', '6000', 'mgr', 1)

