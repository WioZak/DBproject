-- Wypelnij oddzialy
INSERT INTO SZPITAL..oddzialy VALUES ('Anastezjologii i Intensywnej Terapii');
INSERT INTO SZPITAL..oddzialy VALUES ('Neurologii');
INSERT INTO SZPITAL..oddzialy VALUES ('Chirurgii Urazowej i Ortopedii');
INSERT INTO SZPITAL..oddzialy VALUES ('Kardiologiczny');
INSERT INTO SZPITAL..oddzialy VALUES ('Psychologii i Psychiatrii');
INSERT INTO SZPITAL..oddzialy VALUES ('Dermatologii');
INSERT INTO SZPITAL..oddzialy VALUES ('Diabetologii i chorób wewnętrznych');
INSERT INTO SZPITAL..oddzialy VALUES ('Pulmonologiczny');

-- Wypelnij lekarze
INSERT INTO SZPITAL..lekarze VALUES ('Alicja', 'Szymańska-Keller', '24000', 'prof. dr', 'chirurg', '85050410904', 3);
INSERT INTO SZPITAL..lekarze VALUES ('Piotr', 'Wanat', '20000', 'prof. dr', 'psychiatra', '86030218750', 5);
INSERT INTO SZPITAL..lekarze VALUES ('Leon', 'Jasiński', '25000', 'prof. dr', 'chirurg', '87052603078', 1);
INSERT INTO SZPITAL..lekarze VALUES ('Adam', 'Gajewski', '18000', 'dr', 'kardiolog', '83021611109', 4);
INSERT INTO SZPITAL..lekarze VALUES ('Beata', 'Jasińska', '19000', 'prof. dr', 'dermatolog', '89010414940', 6);
INSERT INTO SZPITAL..lekarze VALUES ('Jarosław', 'Góra', '10000', 'dr', 'ortopeda', '83020114511', 3);
INSERT INTO SZPITAL..lekarze VALUES ('Andrzej', 'Nowisz', '7000', 'mgr', 'psycholog', '92061318934', 5);
INSERT INTO SZPITAL..lekarze VALUES ('Cristina', 'Yang', '15000', 'dr', 'anestezjolog', '86111201804', 1);
INSERT INTO SZPITAL..lekarze VALUES ('Miranda', 'Bailey', '170000', 'dr', 'neurolog', '89122503495', 2);
INSERT INTO SZPITAL..lekarze VALUES ('Alex', 'Karev', '12000', 'dr', 'ortopeda', '91071102393', 3);
INSERT INTO SZPITAL..lekarze VALUES ('Cyryl', 'Grzelak', '160000', 'prof. dr', 'diabetolog', '61592759375', 7);
INSERT INTO SZPITAL..lekarze VALUES ('Agnieszka', 'Marek', '11000', 'dr', 'gastrolog', '83757505924', 7);
INSERT INTO SZPITAL..lekarze VALUES ('Wanda', 'Kluska', '20000', 'prof. dr', 'pulmonolog', '47592727918', 8);


-- Wypelnij pacjenci
INSERT INTO SZPITAL..pacjenci VALUES ('Jan', 'Kowalski', '15212408487', '2016-05-30', '2017-01-03'); -- można dać dużo terapii
INSERT INTO SZPITAL..pacjenci VALUES ('Anna', 'Nowak', '06280313805', '2016-06-10', '2016-07-01'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Dawid', 'Sawicki', '07230804626', '2016-06-12', '2016-06-12');
INSERT INTO SZPITAL..pacjenci VALUES ('Marta', 'Zając', '92062305876', '2016-06-14', '2016-06-28');
INSERT INTO SZPITAL..pacjenci VALUES ('Norbert', 'Majchrzak', '10221913326', '2016-06-16', '2016-07-14');
INSERT INTO SZPITAL..pacjenci VALUES ('Emilia', 'Wróbel', '87010414267', '2016-06-18', '2016-07-02');
INSERT INTO SZPITAL..pacjenci VALUES ('Laura', 'Sawicka', '93050418778', '2016-06-20', '2016-06-29');
INSERT INTO SZPITAL..pacjenci VALUES ('Bartek', 'Michalski', '04300407149', '2016-06-26', '2016-07-03');
INSERT INTO SZPITAL..pacjenci VALUES ('Zuzanna', 'Szymańska', '05280316740', '2016-07-13', '2016-07-13');
INSERT INTO SZPITAL..pacjenci VALUES ('Filip', 'Orzechowski', '80061608311', '2016-07-19', '2016-07-22');
INSERT INTO SZPITAL..pacjenci VALUES ('Małgorzata', 'Stępień', '07311214757', '2016-07-20', '2016-07-27');
INSERT INTO SZPITAL..pacjenci VALUES ('Dawid', 'Jabłoński', '76052505664', '2016-08-04', '2016-08-22');
INSERT INTO SZPITAL..pacjenci VALUES ('Nela', 'Tomaszewska', '75030917332', '2016-08-04', '2016-08-06');
INSERT INTO SZPITAL..pacjenci VALUES ('Ida', 'Matuszewska', '97072809970', '2016-08-15', '2016-08-25');
INSERT INTO SZPITAL..pacjenci VALUES ('Ignacy', 'Nowicki', '77062017662', '2016-08-16', '2016-08-30');
INSERT INTO SZPITAL..pacjenci VALUES ('Jakub', 'Kaczor', '93062006866', '2016-08-23', '2016-08-30');
INSERT INTO SZPITAL..pacjenci VALUES ('Paulina', 'Lewandowska', '83021613675', '2016-10-24', '2016-10-31');
INSERT INTO SZPITAL..pacjenci VALUES ('Nikola', 'Sobczyk', '08222413006', '2016-11-18', '2016-11-21');
INSERT INTO SZPITAL..pacjenci VALUES ('Zofia', 'Pawlik', '14250605166', '2016-11-28', '2016-12-15');
INSERT INTO SZPITAL..pacjenci VALUES ('Antoni', 'Stępień', '93101015736', '2016-12-13', '2016-12-13');
INSERT INTO SZPITAL..pacjenci VALUES ('Jan', 'Stankiewicz', '98082714306', '2017-01-24', '2017-01-29');
INSERT INTO SZPITAL..pacjenci VALUES ('Wiktor', 'Kopeć', '11281113750', '2017-01-25', '2017-02-05');
INSERT INTO SZPITAL..pacjenci VALUES ('Jan', 'Zięba', '91070406962', '2017-02-17', NULL);
INSERT INTO SZPITAL..pacjenci VALUES ('Lena', 'Jasińska', '83031407703', '2017-03-09', '2017-05-08');
INSERT INTO SZPITAL..pacjenci VALUES ('Mateusz', 'Kwiatkowski', '81070612607', '2017-03-21', '2017-04-04');
INSERT INTO SZPITAL..pacjenci VALUES ('Julia', 'Andrzejewska', '01253119554', '2017-04-21', NULL);
INSERT INTO SZPITAL..pacjenci VALUES ('Bartek', 'Król', '95062403483', '2017-05-10', NULL);
INSERT INTO SZPITAL..pacjenci VALUES ('Jakub', 'Walczak', '00212614318', '2017-05-18', '2017-05-23');
INSERT INTO SZPITAL..pacjenci VALUES ('Aleksandra', 'Pawlak', '81111700247', '2017-05-19', NULL);
INSERT INTO SZPITAL..pacjenci VALUES ('Hanna', 'Kaczmarczyk', '78042607000', '2017-05-22', NULL);


-- Wypelnij jednostki chorobowe
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('anemia');
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('żółtaczka'); -- gastrolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('udar mózgu'); --neurolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('depresja'); --psychiatra, psycholog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('cukrzyca'); --diabetolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('złamanie otwarte przedramienia'); --chirurg
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('zwichnięcie stawu skokowego'); --ortopeda
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('astma oskrzelowa'); --pulmonolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('oparzenie'); --dermatolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('łuszczyca'); --dermatolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('atopowe zapalenie skóry'); --dermatolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('kamica pęcherzyka żółciowego'); --chirurg operacja
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('przepuklina'); --chirurg anastezjolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('ostre zapalenie trzustki'); --chirurg anastezjolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('miażdżyca'); --kardiolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('choroba niedokrwienna serca'); --kardiolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('stany lękowe'); --psychiatra
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('zapalenie płuc'); --pulmonolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('zapalenie wyrostka robaczkowego'); --chirurg, anastezjolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('padaczka'); --neurolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('alzheimer'); --neurolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('migrena'); --neurolog

-- Wypelnij zabiegi
INSERT INTO SZPITAL..zabiegi VALUES ('wycięcie wyrostka');
INSERT INTO SZPITAL..zabiegi VALUES ('naświetlanie lampami');
INSERT INTO SZPITAL..zabiegi VALUES ('rehabilitacja stawu skokowego');
INSERT INTO SZPITAL..zabiegi VALUES ('rehabilitacja przedramienia');
INSERT INTO SZPITAL..zabiegi VALUES ('operacja przepukliny');
INSERT INTO SZPITAL..zabiegi VALUES ('rehabilitacja poudarowa');
INSERT INTO SZPITAL..zabiegi VALUES ('krioterapia');
INSERT INTO SZPITAL..zabiegi VALUES ('inhalacje'); --zapalenie płuc

-- Wypelnij lekarstwa
INSERT INTO SZPITAL..lekarstwa VALUES ('aescin', 'depresja', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('nerwonal', 'stany lękowe', '1x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('ridlip', 'miażdżyca', '2x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('opokan', 'bóle kostno-stawowe', 'doraźnie max 6');
INSERT INTO SZPITAL..lekarstwa VALUES ('paracetamol', 'bóle', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('linomag', 'problemy skórne', '5x1');

-- Wypelnij terapie
-- INSERT INTO SZPITAL..terapie VALUES ('','', , , , );
-- choroba, zabieg, lekarstwo, lekarz
INSERT INTO SZPITAL..terapie VALUES ('2016-05-30','2016-08-30', 15, NULL, 3, 4);




