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


-- 4. Ilu pacjentów nie zakoñczy³o leczenia?


-- 5. Wypisz pacjentów, którzy przebywali w szpitalu d³u¿ej ni¿ miesi¹c.


-- 6. Wypisz pacjentów, którzy przebywali na oddziale Kardialogicznym.


-- 7. Lekarze którego oddzia³u zarabiaj¹ najwiêcej? 


-- 8. Którzy z pracowników maj¹ tytu³ profesora?


-- 9. Ile specjalnoœci lekarskich mo¿na spotkaæ w szpitalu?


-- 10. Wyœwietl pacjentów, którzy przechodzili wiêcej ni¿ jedn¹ terapiê. Wyœwietl te terapie.


-- 11. Ktorzy z pacjentów zakoñczyli leczenie w 2016 roku? Wyœwietl ich dane osobowe i datê wypisu.


-- 12. 


-- 13.


-- 14. 


-- 15.

-- ? Wyœwietl lekarstwo najczêœciej przepisywane pacjentom 
-- ? Który oddzia³ ma najwiêcej pracowników? Wypisz ich nazwiska.