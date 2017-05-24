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
select jednostki_chorobowe.*
from jednostki_chorobowe
where jednostki_chorobowe.choroba_id not in (select historia_leczenia.choroba_id from historia_leczenia) 



-- 4. Ilu pacjentów nie zakoñczy³o leczenia?
select count (*) as 'liczba pacjentow'
from pacjenci
where pacjent_data_wypisu is null
group by pacjent_data_wypisu



-- 5. Wypisz pacjentów, którzy przebywali w szpitalu d³u¿ej ni¿ miesi¹c.
select *
from pacjenci
where DATEDIFF(DAYOFYEAR,pacjent_data_przyjecia, pacjent_data_wypisu) >= 31

-- 6. Wypisz pacjentów, którzy byli leczeni przez lekarzy z oddzia³u Kardiologicznego.(przebywali na oddziale Kardialogicznym.)


-- 7. Wypisz oddzia³, w którym lekarze(Lekarze którego oddzia³u)zarabiaj¹ najwiêcej? (nie jest idealnie ale dzia³a :D)
select top 1 sum(lekarz_pensja) as sum_pensja, oddzial_nazwa
from lekarze
join oddzialy
on oddzialy.oddzial_id = lekarze.oddzial_id
group by oddzial_nazwa
order by sum_pensja DESC


-- 8. Którzy z pracowników maj¹ tytu³ profesora?
select *
from lekarze
where lekarz_tytul = 'prof. dr'

-- 9. Ile specjalnoœci lekarskich mo¿na spotkaæ w szpitalu?
select count(distinct lekarz_specjalizacja) as 'ilosc specjalizacji'
from lekarze

-- 10. Wyœwietl pacjentów, którzy przechodzili wiêcej ni¿ jeden zabieg. Wyœwietl te zabiegi. (to jeszcze nie dzia³a)
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
 

-- 11. Ktorzy z pacjentów zakoñczyli leczenie w 2016 roku? Wyœwietl ich dane osobowe i datê zakonczenia leczenia.
select pacjenci.pacjent_imie, pacjenci.pacjent_nazwisko, pacjenci.pacjent_pesel, historia_leczenia.leczenie_data_zak
from historia_leczenia
join pacjenci
on pacjenci.pacjent_id=historia_leczenia.pacjent_id
where DATEPART(YEAR, leczenie_data_zak) = 2016

-- 12. 


-- 13.


-- 14. 


-- 15.

-- ? Wyœwietl lekarstwo najczêœciej przepisywane pacjentom 
-- ? Który oddzia³ ma najwiêcej pracowników? Wypisz ich nazwiska.