CREATE DATABASE SZPITAL
GO

CREATE TABLE SZPITAL..oddzialy 
    ( oddzial_id		INT PRIMARY KEY IDENTITY(1,1)
	, oddzial_nazwa		VARCHAR(50)
    ); 
GO

CREATE TABLE SZPITAL..lekarze
    ( lekarz_id				INT PRIMARY KEY IDENTITY(1,1)
    , lekarz_imie			VARCHAR(25) 
	, lekarz_nazwisko		VARCHAR(50)
	, lekarz_pensja			MONEY
	, lekarz_tytul			VARCHAR(8) NOT NULL CHECK (lekarz_tytul IN('mgr', 'dr', 'prof. dr'))
	, lekarz_specjalizacja	VARCHAR(50) 
	, lekarz_pesel			VARCHAR(11)
	CONSTRAINT lekarz_peselC CHECK (lekarz_pesel LIKE '%[0-9]%')
	, oddzial_id			INT
	, CONSTRAINT oddzial_id_fk FOREIGN KEY (oddzial_id) REFERENCES oddzialy(oddzial_id)
	, uop					BIT DEFAULT 1 NOT NULL
	, pracuje_od			DATE NOT NULL DEFAULT GETDATE()
    );
GO

CREATE TABLE SZPITAL..pacjenci
    ( pacjent_id				INT PRIMARY KEY IDENTITY(1,1)
    , pacjent_imie				VARCHAR(25) 
	, pacjent_nazwisko			VARCHAR(50)
	, pacjent_pesel				VARCHAR(11) NOT NULL UNIQUE
	CONSTRAINT pacjent_peselC CHECK (pacjent_pesel LIKE '%[0-9]%')
	, pacjent_data_przyjecia	DATE NOT NULL
	, pacjent_data_wypisu		DATE
    );
GO

CREATE TABLE SZPITAL..jednostki_chorobowe
    ( choroba_id		INT PRIMARY KEY IDENTITY(1,1)
    , choroba_nazwa		VARCHAR(50) NOT NULL
    );
GO

CREATE TABLE SZPITAL..zabiegi
    ( zabieg_id		INT PRIMARY KEY IDENTITY(1,1)
    , zabieg_nazwa	VARCHAR(50)
    );
GO

CREATE TABLE SZPITAL..lekarstwa
    ( lekarstwo_id					INT PRIMARY KEY IDENTITY(1,1)
    , lekarstwo_nazwa				VARCHAR(50)
	, lekarstwo_przeznaczenie		VARCHAR(200)
	, lekarstwo_dawkowanie_dzien	VARCHAR(30)
    );
GO

CREATE TABLE SZPITAL..historia_leczenia
    ( leczenie_id		INT PRIMARY KEY IDENTITY(1,1)
	, leczenie_data_rozp	DATE NOT NULL
	, leczenie_data_zak	DATE DEFAULT NULL
	, choroba_id		INT NOT NULL
	, zabieg_id			INT DEFAULT NULL
	, lekarstwo_id		INT DEFAULT NULL
	, lekarz_id			INT NOT NULL
	, pacjent_id		INT NOT NULL
	, CONSTRAINT choroba_id_fk FOREIGN KEY (choroba_id) REFERENCES jednostki_chorobowe(choroba_id)
	, CONSTRAINT zabiegi_id_fk FOREIGN KEY (zabieg_id) REFERENCES zabiegi(zabieg_id)
	, CONSTRAINT lekarstwa_id_fk FOREIGN KEY (lekarstwo_id) REFERENCES lekarstwa(lekarstwo_id)
	, CONSTRAINT lekarz_id_fk FOREIGN KEY (lekarz_id) REFERENCES lekarze(lekarz_id)
	, CONSTRAINT pacjent_id_fk FOREIGN KEY (pacjent_id) REFERENCES pacjenci(pacjent_id)
    );
GO