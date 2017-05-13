if exists(select 1 from master.dbo.sysdatabases where name = 'SZPITAL') drop database SZPITAL
GO
CREATE DATABASE SZPITAL
GO

CREATE TABLE SZPITAL..lekarze
    ( lekarz_id      INT PRIMARY KEY
    , lekarz_imie    VARCHAR(25) 
	, lekarz_nazwisko VARCHAR(50)
	, lekarz_pensja MONEY
	, lekarz_tytul VARCHAR(25)
	, lekarz_specjalizacja VARCHAR(50)
	, lekarz_pesel VARCHAR(11)
	, oddzial_id INT
    );
GO

--ALTER TABLE SZPITAL..lekarze ADD CONSTRAINT lekarz_id_pk PRIMARY KEY (lekarz_id) ;
--GO

CREATE TABLE SZPITAL..oddzialy 
    ( oddzial_id INT NOT NULL
	, oddzial_nazwa VARCHAR(50)
    ); 
GO


ALTER TABLE SZPITAL..oddzialy ADD CONSTRAINT oddzial_id_pk PRIMARY KEY (oddzial_id) ;
GO

ALTER TABLE SZPITAL..lekarze ADD CONSTRAINT oddzial_id_fk FOREIGN KEY (oddzial_id) REFERENCES oddzialy(oddzial_id);
GO


CREATE TABLE SZPITAL..pacjenci
    ( pacjent_id      INT PRIMARY KEY
    , pacjent_imie    VARCHAR(25) 
	, pacjent_nazwisko VARCHAR(50)
	, pacjent_pesel VARCHAR(11) NOT NULL UNIQUE
	CONSTRAINT pacjent_peselC CHECK (pacjent_pesel LIKE '%[0-9]%')
	, pacjent_data_przyjecia DATE NOT NULL
	, pacjent_data_wypisu DATE
	, lekarz_id INT NOT NULL
	, choroba_id INT
    );
GO

--ALTER TABLE SZPITAL..pacjenci ADD CONSTRAINT pacjent_id_pk PRIMARY KEY (pacjent_id) ;
--GO

ALTER TABLE SZPITAL..lekarze ADD CONSTRAINT oddzial_id_fk FOREIGN KEY (oddzial_id) REFERENCES oddzialy(oddzial_id);
GO

CREATE TABLE SZPITAL..jednostki_chorobowe
    ( choroba_id      INT PRIMARY KEY
    , choroba_nazwa    VARCHAR(50) NOT NULL
	, pacjent_data_wypisu DATE DEFAULT NULL
    );
GO

--ALTER TABLE SZPITAL..jednostki_chorobowe ADD CONSTRAINT choroba_id_pk PRIMARY KEY (choroba_id) ;
--GO

ALTER TABLE SZPITAL..pacjenci ADD CONSTRAINT choroba_id_fk FOREIGN KEY (choroba_id) REFERENCES jednostki_chorobowe(choroba_id);
GO

CREATE TABLE SZPITAL..terapie
    ( terapia_id      INT NOT NULL
    , choroba_id    INT 
	, terapia_data_rozp DATE NOT NULL
	, terapia_data_zak DATE DEFAULT NULL
    );
GO
