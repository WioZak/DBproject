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
DECLARE @dataZakonczenia DATE
DECLARE @leczenieID INT

SELECT @dataZakonczenia = deleted.leczenie_data_zak FROM deleted
SELECT @leczenieID = deleted.leczenie_id FROM deleted

	IF (@dataZakonczenia is NULL)
		BEGIN
			PRINT 'Nie mo�na usun�� niezako�czonej terapii. Nie usuni�to terapii o id  ' + CAST(@leczenieID AS VARCHAR)
		END
END

DELETE FROM historia_leczenia WHERE leczenie_id = 34

-- 2. Zabro� zmiejszenia pensji lekarza. Wy�wietl komunikat. Udowodnij dzia�anie wyzwalacza (przed/po).

-- 3. Je�li podczas dodawania nowego lekarza nie zostanie podana specjalizacja i/lub PESEL, wype�nij te pola odpowiednio: "Nie podano" oraz "00000000000". Wy�wietl komunikat. Udowodnij dzia�anie wyzwalacza (przed/po).