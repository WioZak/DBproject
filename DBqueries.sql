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

-- 3. Jakie choroby nie zosta�y zdiagnozowane u pacjent�w?
SELECT *
	FROM szpital.dbo.jednostki_chorobowe
	WHERE jednostki_chorobowe.choroba_id NOT IN (SELECT historia_leczenia.choroba_id FROM szpital.dbo.historia_leczenia) 

-- 4. Ilu pacjent�w nie zako�czy�o leczenia? 
SELECT COUNT(*) as 'liczba pacjentow'
	FROM szpital.dbo.pacjenci 
	WHERE pacjent_data_wypisu IS NULL

-- 5. Wypisz pacjent�w, kt�rzy przebywali w szpitalu d�u�ej ni� miesi�c.
SELECT *
	FROM szpital.dbo.pacjenci
	WHERE DATEDIFF(DAYOFYEAR,pacjent_data_przyjecia, pacjent_data_wypisu) >= 31

-- 6. Wypisz lekarzy, kt�rzy pracuj� na oddziale Diabetologii i chor�b wewn�trznych.
SELECT DISTINCT l.lekarz_imie, l.lekarz_nazwisko, l.lekarz_specjalizacja
	FROM szpital.dbo.lekarze l JOIN szpital.dbo.oddzialy o ON l.oddzial_id = o.oddzial_id
	WHERE o.oddzial_nazwa = 'Diabetologii i chor�b wewn�trznych';

-- 7. Wypisz pacjent�w przebywaj�cych kiedykolwiek na oddziale Chirurgii i Ortopedii.
SELECT DISTINCT p.pacjent_imie, p.pacjent_nazwisko, j.choroba_nazwa
	FROM szpital.dbo.lekarze l 
	JOIN szpital.dbo.oddzialy o ON l.oddzial_id = o.oddzial_id 
	JOIN szpital.dbo.historia_leczenia h ON h.lekarz_id = l.lekarz_id
	JOIN szpital.dbo.pacjenci p ON h.pacjent_id = p.pacjent_id
	JOIN szpital.dbo.jednostki_chorobowe j ON h.choroba_id = j.choroba_id
	WHERE o.oddzial_nazwa = 'Chirurgii i Ortopedii';

-- 8. Kt�rzy z pracownik�w maj� tytu� profesora?
SELECT DISTINCT lekarz_imie, lekarz_nazwisko, lekarz_specjalizacja
	FROM szpital.dbo.lekarze 
	WHERE lekarz_tytul = 'prof. dr';
	
-- 9. Ile w sumie specjalno�ci lekarskich mo�na spotka� w szpitalu?
SELECT COUNT(DISTINCT lekarz_specjalizacja) AS 'ilosc specjalizacji'
	FROM szpital.dbo.lekarze

-- 10. Ile jest przedstawicieli ka�dej ze specjalno�ci?
SELECT szpital.dbo.lekarze.lekarz_specjalizacja, COUNT (*) AS 'liczba pracownikow z ta specjalizacja'
	FROM szpital.dbo.lekarze
	GROUP BY szpital.dbo.lekarze.lekarz_specjalizacja

-- 11. Wy�wietl pacjent�w, kt�rzy przechodzili wi�cej ni� jedn� terapi�. Wy�wietl te terapie. (to jeszcze nie dzia�a)
select *
from historia_leczenia
left join pacjenci
on pacjenci.pacjent_id=historia_leczenia.pacjent_id
right join zabiegi
on zabiegi.zabieg_id=historia_leczenia.zabieg_id
where historia_leczenia.pacjent_id > 1

select pacjent_id
from historia_leczenia
group by pacjent_id
having count(pacjent_id) > 1


-- 12. Ktorzy z pacjent�w zako�czyli leczenie w 2016 roku? Wy�wietl ich dane osobowe i dat� wypisu.
SELECT pacjenci.pacjent_imie, pacjenci.pacjent_nazwisko, pacjenci.pacjent_pesel, historia_leczenia.leczenie_data_zak
	FROM szpital.dbo.historia_leczenia
	JOIN szpital.dbo.pacjenci
	ON szpital.dbo.pacjenci.pacjent_id=historia_leczenia.pacjent_id
	WHERE DATEPART(YEAR, leczenie_data_zak) = 2016

-- 13. Kt�ry oddzia� zarabia najwi�cej? 
SELECT top 1 SUM(lekarz_pensja) AS sum_pensja, oddzial_nazwa
	FROM szpital.dbo.lekarze
	JOIN szpital.dbo.oddzialy
	ON oddzialy.oddzial_id = lekarze.oddzial_id
	GROUP BY oddzial_nazwa
	ORDER BY sum_pensja DESC

-- 14. Wy�wietl lekarstwo najcz�ciej przepisywane pacjentom 
SELECT TOP 1 szpital.dbo.lekarstwa.lekarstwo_nazwa, COUNT (*) AS 'ilosc wystapien na receptach'
	FROM szpital.dbo.lekarstwa, szpital.dbo.historia_leczenia
	WHERE szpital.dbo.lekarstwa.lekarstwo_id = szpital.dbo.historia_leczenia.lekarstwo_id
	GROUP BY szpital.dbo.lekarstwa.lekarstwo_nazwa
	ORDER BY 'ilosc wystapien na receptach' DESC

-- 15. Wy�wietl pacjent�w, kt�rzy przeszli psychoterapi�
SELECT DISTINCT p.pacjent_imie, p.pacjent_nazwisko, j.choroba_nazwa
	FROM szpital.dbo.historia_leczenia h 
	JOIN szpital.dbo.pacjenci p ON h.pacjent_id = p.pacjent_id
	JOIN szpital.dbo.jednostki_chorobowe j ON h.choroba_id = j.choroba_id
	JOIN szpital.dbo.zabiegi z ON h.zabieg_id = z.zabieg_id
	WHERE z.zabieg_nazwa = 'psychoterapia';
