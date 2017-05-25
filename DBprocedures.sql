-- PROCEDURY
-- 1. Zaktualizuj pensje lekarzy pracuj�cych d�u�ej ni� p� roku, zwi�kszaj�c j� o kwot� podan� w argumencie.
create procedure pensja @Kwota int
as
begin
Update lekarze
set lekarze.lekarz_pensja=lekarze.lekarz_pensja + @Kwota
where DATEDIFF(DAYOFYEAR,lekarze.pracuje_od,GETDATE()) > 180
end
 
drop procedure pensja

exec pensja 300

select *
from lekarze
order by pracuje_od


-- 2. Dodaj nowego pacjenta (jako argumenty dane osobowe, nie pro� o dat� przyj�cia - wygeneruj automatycznie).
create procedure dodaj_pacjenta @imie VARCHAR(25), @nazwisko VARCHAR(50), @pesel VARCHAR(11)
as
begin
insert into pacjenci (pacjent_imie, pacjent_nazwisko, pacjent_pesel, pacjent_data_przyjecia)
values (@imie, @nazwisko, @pesel, GETDATE())
end

drop procedure dodaj_pacjenta

exec dodaj_pacjenta Aleksandra, Gandziarowska, 96111904684

select *
from pacjenci


-- 3. Usu� z historii leczenia terapie zako�czone przed dat� podan� w argumencie i pacjent�w kt�rzy przestali by� przypisani do jakiejkolwiek terapii.



-- FUNKCJE
-- 1. Napisz funkcj�, kt�ra obliczy zarobek netto ka�dego lekarza w zale�no�ci od rodzaju umowy

CREATE FUNCTION dbo.LiczNetto(@LekarzID INT)
  RETURNS FLOAT
  AS
  BEGIN
	DECLARE @NETTO FLOAT;
	DECLARE @BRUTTO FLOAT;
	DECLARE @UOP BIT;
		
	SET @BRUTTO = (SELECT lekarz_pensja
			 FROM szpital.dbo.lekarze
			 WHERE lekarz_id = @LekarzID
			 );
			 
	SET @UOP = (SELECT uop 
			 FROM szpital.dbo.lekarze
			 WHERE lekarz_id = @LekarzID)
	IF(@UOP = 1) BEGIN
		SET @NETTO = @BRUTTO * 0.75;
	END
	ELSE BEGIN
		SET @NETTO = @BRUTTO * 0.82;
	END
	RETURN @NETTO;
  END
GO

SELECT *, dbo.LiczNetto(lekarz_id) as pensja_netto
FROM szpital.dbo.lekarze