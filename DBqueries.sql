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


-- 4. Ilu pacjent�w nie zako�czy�o leczenia?


-- 5. Wypisz pacjent�w, kt�rzy przebywali w szpitalu d�u�ej ni� miesi�c.


-- 6. Wypisz pacjent�w, kt�rzy przebywali na oddziale Kardialogicznym.


-- 7. Lekarze kt�rego oddzia�u zarabiaj� najwi�cej? 


-- 8. Kt�rzy z pracownik�w maj� tytu� profesora?


-- 9. Ile specjalno�ci lekarskich mo�na spotka� w szpitalu?


-- 10. Wy�wietl pacjent�w, kt�rzy przechodzili wi�cej ni� jedn� terapi�. Wy�wietl te terapie.


-- 11. Ktorzy z pacjent�w zako�czyli leczenie w 2016 roku? Wy�wietl ich dane osobowe i dat� wypisu.


-- 12. 


-- 13.


-- 14. 


-- 15.

-- ? Wy�wietl lekarstwo najcz�ciej przepisywane pacjentom 
-- ? Kt�ry oddzia� ma najwi�cej pracownik�w? Wypisz ich nazwiska.