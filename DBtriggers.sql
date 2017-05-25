-- WYZWALACZE
-- 1. Nie pozwól na usuniêcie niezakoñczonej terapii. Wyœwietl odpowiedni komunikat. Udowodnij dzia³anie wyzwalacza (przed/po).
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
			PRINT 'Nie mo¿na usun¹æ niezakoñczonej terapii. Nie usuniêto terapii o id  ' + CAST(@leczenieID AS VARCHAR)
		END
END

DELETE FROM historia_leczenia WHERE leczenie_id = 34

-- 2. Zabroñ zmiejszenia pensji lekarza. Wyœwietl komunikat. Udowodnij dzia³anie wyzwalacza (przed/po).

-- 3. Jeœli podczas dodawania nowego lekarza nie zostanie podana specjalizacja i/lub PESEL, wype³nij te pola odpowiednio: "Nie podano" oraz "00000000000". Wyœwietl komunikat. Udowodnij dzia³anie wyzwalacza (przed/po).