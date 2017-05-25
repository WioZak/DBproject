-- Wypelnij oddzialy
INSERT INTO SZPITAL..oddzialy VALUES ('Anastezjologii i Intensywnej Terapii');
INSERT INTO SZPITAL..oddzialy VALUES ('Neurologii');
INSERT INTO SZPITAL..oddzialy VALUES ('Chirurgii i Ortopedii');
INSERT INTO SZPITAL..oddzialy VALUES ('Kardiologiczny');
INSERT INTO SZPITAL..oddzialy VALUES ('Psychologii i Psychiatrii');
INSERT INTO SZPITAL..oddzialy VALUES ('Dermatologii');
INSERT INTO SZPITAL..oddzialy VALUES ('Diabetologii i Chorób Wewnętrznych');
INSERT INTO SZPITAL..oddzialy VALUES ('Pulmonologiczny');

-- Wypelnij lekarze
INSERT INTO SZPITAL..lekarze VALUES ('Alicja', 'Szymańska-Keller', '24000', 'prof. dr', 'chirurg', '85050410904', 3, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Piotr', 'Wanat', '20000', 'prof. dr', 'psychiatra', '86030218750', 5, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Leon', 'Jasiński', '25000', 'prof. dr', 'chirurg', '87052603078', 1, 0);
INSERT INTO SZPITAL..lekarze VALUES ('Adam', 'Gajewski', '18000', 'dr', 'kardiolog', '83021611109', 4, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Beata', 'Jasińska', '19000', 'prof. dr', 'dermatolog', '89010414940', 6, 0);
INSERT INTO SZPITAL..lekarze VALUES ('Jarosław', 'Góra', '10000', 'dr', 'ortopeda', '83020114511', 3, 0);
INSERT INTO SZPITAL..lekarze VALUES ('Andrzej', 'Nowisz', '7000', 'mgr', 'psycholog', '92061318934', 5, 0);
INSERT INTO SZPITAL..lekarze VALUES ('Cristina', 'Yang', '15000', 'dr', 'chirurg', '86111201804', 1, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Miranda', 'Bailey', '17000', 'dr', 'neurolog', '89122503495', 2, 0);
INSERT INTO SZPITAL..lekarze VALUES ('Alex', 'Karev', '12000', 'dr', 'ortopeda', '91071102393', 3, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Cyryl', 'Grzelak', '16000', 'prof. dr', 'diabetolog', '61592759375', 7, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Agnieszka', 'Marek', '11000', 'dr', 'gastrolog', '83757505924', 7, 1);
INSERT INTO SZPITAL..lekarze VALUES ('Wanda', 'Kluska', '20000', 'prof. dr', 'pulmonolog', '47592727918', 8, 0);


-- Wypelnij pacjenci
INSERT INTO SZPITAL..pacjenci VALUES ('Jan', 'Kowalski', '15212408487', '2016-05-30', '2017-01-03'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Anna', 'Nowak', '06280313805', '2016-06-10', '2016-11-01'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Dawid', 'Sawicki', '07230804626', '2016-06-12', '2016-06-17'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Marta', 'Zając', '92062305876', '2016-06-14', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Norbert', 'Majchrzak', '10221913326', '2016-06-16', '2016-07-01'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Emilia', 'Wróbel', '87010414267', '2016-06-18', '2016-07-02'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Laura', 'Sawicka', '93050418778', '2016-06-20', '2016-06-29'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Bartek', 'Michalski', '04300407149', '2016-06-26', '2016-07-03'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Zuzanna', 'Szymańska', '05280316740', '2016-07-13', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Filip', 'Orzechowski', '80061608311', '2016-07-19', '2016-07-22'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Małgorzata', 'Stępień', '07311214757', '2016-07-20', '2016-07-27');
INSERT INTO SZPITAL..pacjenci VALUES ('Dawid', 'Jabłoński', '76052505664', '2016-08-04', '2016-09-22');
INSERT INTO SZPITAL..pacjenci VALUES ('Nela', 'Tomaszewska', '75030917332', '2016-08-04', '2016-08-06'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Ida', 'Matuszewska', '97072809970', '2016-08-15', '2016-08-25'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Ignacy', 'Nowicki', '77062017662', '2016-08-16', NULL);
INSERT INTO SZPITAL..pacjenci VALUES ('Jakub', 'Kaczor', '93062006866', '2016-08-23', '2016-12-23'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Paulina', 'Lewandowska', '83021613675', '2016-10-24', '2016-10-31'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Nikola', 'Sobczyk', '08222413006', '2016-11-18', '2016-11-21'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Zofia', 'Pawlik', '14250605166', '2016-11-28', '2016-12-05'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Antoni', 'Stępień', '93101015736', '2016-12-13', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Jan', 'Stankiewicz', '98082714306', '2017-01-24', '2017-01-29'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Wiktor', 'Kopeć', '11281113750', '2017-01-25', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Jan', 'Zięba', '91070406962', '2017-02-17', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Lena', 'Jasińska', '83031407703', '2017-03-09', '2017-05-08'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Mateusz', 'Kwiatkowski', '81070612607', '2017-03-21', '2017-04-04'); 
INSERT INTO SZPITAL..pacjenci VALUES ('Julia', 'Andrzejewska', '01253119554', '2017-04-21', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Bartek', 'Król', '95062403483', '2017-05-10', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Jakub', 'Walczak', '00212614318', '2017-05-18', '2017-05-23');
INSERT INTO SZPITAL..pacjenci VALUES ('Aleksandra', 'Pawlak', '81111700247', '2017-05-19', NULL); 
INSERT INTO SZPITAL..pacjenci VALUES ('Hanna', 'Kaczmarczyk', '78042607000', '2017-05-22', NULL);


-- Wypelnij jednostki_chorobowe
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('anemia');
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('wirusowe zapalenie wątroby typu C'); -- gastrolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('udar mózgu'); --neurolog
INSERT INTO SZPITAL..jednostki_chorobowe VALUES ('depresja'); -- psycholog
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
INSERT INTO SZPITAL..zabiegi VALUES ('inhalacje'); 
INSERT INTO SZPITAL..zabiegi VALUES ('usunięcie woreczka żółciowego'); 
INSERT INTO SZPITAL..zabiegi VALUES ('psychoterapia'); 

-- Wypelnij lekarstwa
INSERT INTO SZPITAL..lekarstwa VALUES ('aescin', 'depresja', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('nerwonal', 'stany lękowe', '1x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('ridlip', 'miażdżyca', '2x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('nebiwolol', 'choroba niedokrwienna serca', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('opokan', 'bóle kostno-stawowe', 'doraźnie max 6');
INSERT INTO SZPITAL..lekarstwa VALUES ('paracetamol', 'bóle', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('linomag', 'problemy skórne', '5x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('celestone', 'astma', '5x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('nicerin', 'alzheimer', '1x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('caviton', 'alzheimer', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('gliatilin', 'alzheimer', '4x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('amotaks', 'antybiotyk na zapalenie płuc', '3x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('metformax', 'cukrzyca', '2x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('interferon', 'wirusowe zapalenie wątroby typu C', '1x1');
INSERT INTO SZPITAL..lekarstwa VALUES ('phenobarbital', 'padaczka', '3x1');



-- Wypelnij historia_leczenia
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-05-30', '2016-09-30', 15, NULL, 3, 4, 1); -- miażdżyca, pacjent 1
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-10-01', '2016-01-03', 16, 7, 4, 4, 1); -- niedokrwienna, pacjent 1
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-10', '2016-07-01', 8, 8, 8, 13, 2); -- astma, pacjent 2
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-12', '2016-06-17', 19, 1, 6, 1, 3); -- wyrostek, pacjent 3
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-14', '2016-11-04', 21, NULL, 9, 9, 4); -- alzheimer, pacjent 4
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-07-29', NULL, 21, NULL, 10, 9, 4); -- alzheimer, pacjent 4
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-11-04', NULL, 21, NULL, 11, 9, 4); -- alzheimer, pacjent 4
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-16', '2016-07-01', 11, 2, 7, 5, 5); -- atopowe, pacjent 5
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-18', '2016-07-02', 13, 5, NULL, 8, 6); -- przepuklina, pacjent 6
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-20', '2016-06-29', 18, 8, 12, 13, 7); -- zapalenie płuc, pacjent 7
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-06-26', '2016-07-03', 12, 9, NULL, 3, 8); -- kamica, pacjent 8
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-07-13', NULL, 5, NULL, 13, 11, 9); -- cukrzyca, pacjent 9
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-07-19', '2016-07-22', 19, 1, NULL, 1, 10); -- wyrostek, pacjent 10
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-07-20', '2016-07-27', 13, 5, NULL, 8, 11); -- przepuklina, pacjent 11
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-08-04', '2016-09-22', 6, 4, 6, 6, 12); -- złamanie, pacjent 12
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-08-04', '2016-08-06', 19, 1, NULL, 1, 13); -- wyrostek, pacjent 13
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-08-15', '2016-08-25', 18, 8, 12, 13, 14); -- zapalenie płuc, pacjent 14
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-08-16', NULL, 2, NULL, 14, 12, 15); -- wirusowe zapalenie wątroby typu C, pacjent 15
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-08-23', '2016-12-23', 5, NULL, 13, 11, 16); -- cukrzyca, pacjent 16
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-10-24', '2016-10-31', 20, NULL, 15, 9, 17); -- padaczka, pacjent 17
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-11-18', '2016-11-21', 19, 1, 6, 1, 18); -- wyrostek, pacjent 18
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-11-28', '2016-12-05', 7, 3, 6, 6, 19); -- zwichnięcie, pacjent 19
INSERT INTO SZPITAL..historia_leczenia VALUES ('2016-12-13', NULL, 4, NULL, 1, 7, 20); -- depresja, pacjent 20
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-02-14', NULL, 17, 10, 2, 2, 20); -- stany lękowe, pacjent 20
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-01-24', '2017-01-29', 19, 1, NULL, 1, 21); -- wyrostek, pacjent 21
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-01-25', NULL, 22, NULL, 6, 9, 22); -- migrena, pacjent 22
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-02-17', NULL, 4, 10, 1, 2, 23); -- depresja, pacjent 23
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-03-09', '2017-05-08', 9, 2, 7, 5, 24); -- oparzenie, pacjent 24
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-03-21', '2017-04-04', 20, NULL, 15, 9, 25); -- padaczka, pacjent 25
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-04-21', NULL, 17, 10, 2, 7, 26); -- stany lękowe, pacjent 26
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-05-10', NULL, 11, 2, 7, 5, 27); -- atopowe zapalenie skóry, pacjent 27
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-05-18', '2017-05-23', 5, NULL, 13, 11, 28); -- cukrzyca, pacjent 28
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-05-19', NULL, 3, 6, NULL, 9, 29); -- udar mózgu, pacjent 29
INSERT INTO SZPITAL..historia_leczenia VALUES ('2017-05-22', NULL, 10, NULL, 2, 5, 30); -- łuszczyca, pacjent 30
