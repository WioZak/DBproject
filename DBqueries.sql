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
select jednostki_chorobowe.*
from jednostki_chorobowe
where jednostki_chorobowe.choroba_id not in (select historia_leczenia.choroba_id from historia_leczenia) 



-- 4. Ilu pacjent�w nie zako�czy�o leczenia?
select count (*) as 'liczba pacjentow'
from pacjenci
where pacjent_data_wypisu is null
group by pacjent_data_wypisu



-- 5. Wypisz pacjent�w, kt�rzy przebywali w szpitalu d�u�ej ni� miesi�c.
select *
from pacjenci
where DATEDIFF(DAYOFYEAR,pacjent_data_przyjecia, pacjent_data_wypisu) >= 31

-- 6. Wypisz pacjent�w, kt�rzy byli leczeni przez lekarzy z oddzia�u Kardiologicznego.(przebywali na oddziale Kardialogicznym.)


-- 7. Wypisz oddzia�, w kt�rym lekarze(Lekarze kt�rego oddzia�u)zarabiaj� najwi�cej? (nie jest idealnie ale dzia�a :D)
select top 1 sum(lekarz_pensja) as sum_pensja, oddzial_nazwa
from lekarze
join oddzialy
on oddzialy.oddzial_id = lekarze.oddzial_id
group by oddzial_nazwa
order by sum_pensja DESC


-- 8. Kt�rzy z pracownik�w maj� tytu� profesora?
select *
from lekarze
where lekarz_tytul = 'prof. dr'

-- 9. Ile specjalno�ci lekarskich mo�na spotka� w szpitalu?
select count(distinct lekarz_specjalizacja) as 'ilosc specjalizacji'
from lekarze

-- 10. Wy�wietl pacjent�w, kt�rzy przechodzili wi�cej ni� jeden zabieg. Wy�wietl te zabiegi. (to jeszcze nie dzia�a)
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
 

-- 11. Ktorzy z pacjent�w zako�czyli leczenie w 2016 roku? Wy�wietl ich dane osobowe i dat� zakonczenia leczenia.
select pacjenci.pacjent_imie, pacjenci.pacjent_nazwisko, pacjenci.pacjent_pesel, historia_leczenia.leczenie_data_zak
from historia_leczenia
join pacjenci
on pacjenci.pacjent_id=historia_leczenia.pacjent_id
where DATEPART(YEAR, leczenie_data_zak) = 2016

-- 12. 


-- 13.


-- 14. 


-- 15.

-- ? Wy�wietl lekarstwo najcz�ciej przepisywane pacjentom 
-- ? Kt�ry oddzia� ma najwi�cej pracownik�w? Wypisz ich nazwiska.