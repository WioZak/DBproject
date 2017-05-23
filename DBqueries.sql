--    ZAPYTANIA
-- 1. Wy�wietl lekarzy zarabiaj�cych wi�cej ni� �rednia zarobk�w.
SELECT lekarz_nazwisko, lekarz_imie, lekarz_pensja
	FROM szpital.dbo.lekarze
	WHERE lekarz_pensja >= (SELECT AVG(lekarz_pensja) FROM szpital.dbo.lekarze)

-- 2. Podaj liczb� lekarzy z ka�dego oddzia�u wraz z jego nazw�.
SELECT szpital.dbo.oddzialy.oddzial_nazwa, COUNT (*) AS 'liczba pracownikow'
	FROM szpital.dbo.oddzialy, szpital.dbo.lekarze
	WHERE szpital.dbo.lekarze.oddzial_id = szpital.dbo.oddzialy.oddzial_id
	GROUP BY szpital.dbo.oddzialy.oddzial_nazwa

-- 3. Jaka choroba nie zosta�a zdiagnozowana u pacjent�w?


-- 4. Ilu pacjent�w nie zako�czy�o leczenia? (sprawdzic czy da sie ladniej)
SELECT DISTINCT pacjent_imie, pacjent_nazwisko, pacjent_data_przyjecia, pacjent_data_wypisu
	FROM szpital.dbo.pacjenci 
	WHERE pacjent_data_wypisu IS NULL

SELECT COUNT(*)
	FROM szpital.dbo.pacjenci 
	WHERE pacjent_data_wypisu IS NULL

-- 5. Wypisz pacjent�w, kt�rzy przebywali w szpitalu d�u�ej ni� miesi�c.


-- 6. Wypisz lekarzy, kt�rzy pracuj� na oddziale Diabetologii i chor�b wewn�trznych.
SELECT DISTINCT l.lekarz_imie, l.lekarz_nazwisko, l.lekarz_specjalizacja
	FROM szpital.dbo.lekarze l JOIN szpital.dbo.oddzialy o ON l.oddzial_id = o.oddzial_id
	WHERE o.oddzial_nazwa = 'Diabetologii i chor�b wewn�trznych';

-- 7. Wypisz pacjent�w przebywaj�cych na oddziale Chirurgii Urazowej i Ortopedii.


-- 8. Kt�rzy z pracownik�w maj� tytu� profesora?
SELECT DISTINCT lekarz_imie, lekarz_nazwisko, lekarz_specjalizacja
	FROM szpital.dbo.lekarze 
	WHERE lekarz_tytul = 'prof. dr';

-- 9. Ile specjalno�ci lekarskich mo�na spotka� w szpitalu?
SELECT szpital.dbo.lekarze.lekarz_specjalizacja, COUNT (*) AS 'liczba pracownikow z ta specjalizacja'
	FROM szpital.dbo.lekarze
	GROUP BY szpital.dbo.lekarze.lekarz_specjalizacja

-- 10. Wy�wietl pacjent�w, kt�rzy przechodzili wi�cej ni� jedn� terapi�. Wy�wietl te terapie.


-- 11. Ktorzy z pacjent�w zako�czyli leczenie w 2016 roku? Wy�wietl ich dane osobowe i dat� wypisu.


-- 12. Lekarze kt�rego oddzia�u zarabiaj� najwi�cej? 


-- 13. Wy�wietl lekarstwo najcz�ciej przepisywane pacjentom 
SELECT TOP 1 szpital.dbo.lekarstwa.lekarstwo_nazwa, COUNT (*) AS 'ilosc wystapien na receptach'
	FROM szpital.dbo.lekarstwa, szpital.dbo.historia_leczenia
	WHERE szpital.dbo.lekarstwa.lekarstwo_id = szpital.dbo.historia_leczenia.lekarstwo_id
	GROUP BY szpital.dbo.lekarstwa.lekarstwo_nazwa
	ORDER BY 'ilosc wystapien na receptach' DESC

-- 14. 


-- 15.


-- ? Kt�ry oddzia� ma najwi�cej pracownik�w? Wypisz ich nazwiska. (to by byl duplikat chyba)