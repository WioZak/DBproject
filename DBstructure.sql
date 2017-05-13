if exists(select 1 from master.dbo.sysdatabases where name = 'SZPITAL') drop database SZPITAL
GO
CREATE DATABASE SZPITAL
GO

CREATE TABLE SZPITAL..lekarze
    ( lekarz_id				INT PRIMARY KEY
    , lekarz_imie			VARCHAR(25) 
	, lekarz_nazwisko		VARCHAR(50)
	, lekarz_pensja			MONEY
	, lekarz_tytul			VARCHAR(8) NOT NULL CHECK (lekarz_tytul IN('dr', 'prof. dr'))
	, lekarz_specjalizacja	VARCHAR(50)
	, lekarz_pesel			VARCHAR(11)
	, oddzial_id			INT
    );
GO

CREATE TABLE SZPITAL..oddzialy 
    ( oddzial_id		INT PRIMARY KEY
	, oddzial_nazwa		VARCHAR(50)
    ); 
GO

ALTER TABLE SZPITAL..lekarze ADD CONSTRAINT oddzial_id_fk FOREIGN KEY (oddzial_id) REFERENCES oddzialy(oddzial_id);
GO


CREATE TABLE SZPITAL..pacjenci
    ( pacjent_id				INT PRIMARY KEY
    , pacjent_imie				VARCHAR(25) 
	, pacjent_nazwisko			VARCHAR(50)
	, pacjent_pesel				VARCHAR(11) NOT NULL UNIQUE
	CONSTRAINT pacjent_peselC CHECK (pacjent_pesel LIKE '%[0-9]%')
	, pacjent_data_przyjecia	DATE NOT NULL
	, pacjent_data_wypisu		DATE
	, lekarz_id					INT NOT NULL
	, choroba_id				INT
	, terapia_id				INT
    );
GO

CREATE TABLE SZPITAL..jednostki_chorobowe
    ( choroba_id		INT PRIMARY KEY
    , choroba_nazwa		VARCHAR(50) NOT NULL
    );
GO

ALTER TABLE SZPITAL..pacjenci ADD CONSTRAINT lekarz_id_fk FOREIGN KEY (lekarz_id) REFERENCES lekarze(lekarz_id);
GO

ALTER TABLE SZPITAL..pacjenci ADD CONSTRAINT choroba_id_fk FOREIGN KEY (choroba_id) REFERENCES jednostki_chorobowe(choroba_id);
GO

CREATE TABLE SZPITAL..terapie
    ( terapia_id		INT PRIMARY KEY
	, terapia_data_rozp	DATE NOT NULL
	, terapia_data_zak	DATE DEFAULT NULL
	, choroba_id		INT NOT NULL
	, zabieg_id			INT DEFAULT NULL
	, lekarstwo_id		INT DEFAULT NULL
    );
GO

ALTER TABLE SZPITAL..pacjenci ADD CONSTRAINT terapia_id_fk FOREIGN KEY (terapia_id) REFERENCES terapie(terapia_id);
GO

CREATE TABLE SZPITAL..zabiegi
    ( zabieg_id		INT PRIMARY KEY
    , zabieg_nazwa	VARCHAR(50)
	, zabieg_opis	VARCHAR(200)
    );
GO

CREATE TABLE SZPITAL..lekarstwa
    ( lekarstwo_id					INT PRIMARY KEY
    , lekarstwo_nazwa				VARCHAR(50)
	, lekarstwo_opis				VARCHAR(200)
	, lekarstwo_dawkowanie_dzien	INT
    );
GO

ALTER TABLE SZPITAL..terapie ADD CONSTRAINT zabiegi_id_fk FOREIGN KEY (zabieg_id) REFERENCES zabiegi(zabieg_id);
GO

ALTER TABLE SZPITAL..terapie ADD CONSTRAINT lekarstwa_id_fk FOREIGN KEY (lekarstwo_id) REFERENCES lekarstwa(lekarstwo_id);
GO

