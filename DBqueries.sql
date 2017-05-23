--    ZAPYTANIA
-- 1. Wyœwietl lekarzy zarabiaj¹cych wiêcej ni¿ œrednia zarobków.
SELECT lekarz_nazwisko, lekarz_imie, lekarz_pensja
	FROM szpital.dbo.lekarze
	WHERE lekarz_pensja >= (SELECT AVG(lekarz_pensja) FROM szpital.dbo.lekarze)

-- 2. Podaj liczbê lekarzy z ka¿dego oddzia³u wraz z jego nazw¹.
SELECT szpital.dbo.oddzialy.oddzial_nazwa, COUNT (*) AS 'liczba pracownikow'
	FROM szpital.dbo.oddzialy, szpital.dbo.lekarze
	WHERE szpital.dbo.lekarze.oddzial_id = szpital.dbo.oddzialy.oddzial_id
	GROUP BY szpital.dbo.oddzialy.oddzial_nazwa

-- 3. Jaka choroba nie zosta³a zdiagnozowana u pacjentów?


-- 4. Ilu pacjentów nie zakoñczy³o leczenia? (sprawdzic czy da sie ladniej)
SELECT DISTINCT pacjent_imie, pacjent_nazwisko, pacjent_data_przyjecia, pacjent_data_wypisu
	FROM szpital.dbo.pacjenci 
	WHERE pacjent_data_wypisu IS NULL

SELECT COUNT(*)
	FROM szpital.dbo.pacjenci 
	WHERE pacjent_data_wypisu IS NULL

-- 5. Wypisz pacjentów, którzy przebywali w szpitalu d³u¿ej ni¿ miesi¹c.


-- 6. Wypisz lekarzy, którzy pracuj¹ na oddziale Diabetologii i chorób wewnêtrznych.
SELECT DISTINCT l.lekarz_imie, l.lekarz_nazwisko, l.lekarz_specjalizacja
	FROM szpital.dbo.lekarze l JOIN szpital.dbo.oddzialy o ON l.oddzial_id = o.oddzial_id
	WHERE o.oddzial_nazwa = 'Diabetologii i chorób wewnêtrznych';

-- 7. Wypisz pacjentów przebywaj¹cych na oddziale Chirurgii Urazowej i Ortopedii.


-- 8. Którzy z pracowników maj¹ tytu³ profesora?
SELECT DISTINCT lekarz_imie, lekarz_nazwisko, lekarz_specjalizacja
	FROM szpital.dbo.lekarze 
	WHERE lekarz_tytul = 'prof. dr';

-- 9. Ile specjalnoœci lekarskich mo¿na spotkaæ w szpitalu?
SELECT szpital.dbo.lekarze.lekarz_specjalizacja, COUNT (*) AS 'liczba pracownikow z ta specjalizacja'
	FROM szpital.dbo.lekarze
	GROUP BY szpital.dbo.lekarze.lekarz_specjalizacja

-- 10. Wyœwietl pacjentów, którzy przechodzili wiêcej ni¿ jedn¹ terapiê. Wyœwietl te terapie.


-- 11. Ktorzy z pacjentów zakoñczyli leczenie w 2016 roku? Wyœwietl ich dane osobowe i datê wypisu.


-- 12. Lekarze którego oddzia³u zarabiaj¹ najwiêcej? 


-- 13. Wyœwietl lekarstwo najczêœciej przepisywane pacjentom 
SELECT TOP 1 szpital.dbo.lekarstwa.lekarstwo_nazwa, COUNT (*) AS 'ilosc wystapien na receptach'
	FROM szpital.dbo.lekarstwa, szpital.dbo.historia_leczenia
	WHERE szpital.dbo.lekarstwa.lekarstwo_id = szpital.dbo.historia_leczenia.lekarstwo_id
	GROUP BY szpital.dbo.lekarstwa.lekarstwo_nazwa
	ORDER BY 'ilosc wystapien na receptach' DESC

-- 14. 


-- 15.


-- ? Który oddzia³ ma najwiêcej pracowników? Wypisz ich nazwiska. (to by byl duplikat chyba)