
INSERT INTO klient (imie, nazwisko, miasto, adres, telefon)
  VALUES ('Adam', 'Zbylski', 'Linowiec', '13', '693876579'),
         ('Krzysztof', 'Żmijewski', 'Pogódki', '23', '987683421'),
         ('Marek', 'Konkretny', 'Więckowy', '24', '645532877'),
         ('Artur', 'Płażyński', 'Cieciorka','21', '921827464'),
         ('Wojciech', 'Bączyński', 'Skarszewy', 'Kościuszki 18', '765690765'),
         ('Aleksandra', ' Wojciechowska', 'Skarszewy', 'Dworcowa 24', '838746782'),
         ('Kalina', 'Piotrkowska', 'Starogard Gdański', 'Kopernika 20/2', '611178927'),
         ('Mariusz', 'Milewski', 'Skarszewy', 'Kopernika 8/20', '513838928'),
         ('Filip', 'Trzoska', 'Bolesławowo', '2', '789943007'),
         ('Michał', 'Grzywacz', 'Skarszewy', 'Kanada 1/1', '700538291'),
         ('Joanna', 'Gerigk', 'Szczdrowo', 'Wybudowanie 1', '567281762'),
         ('Barbara', 'Stanisławska', 'Racławice', 'Grunwaldzka 128', '678352662'),
         ('Mateusz', 'Szulc', 'Skarszewy', 'Kościerska 22/2', '568938720'),
         ('Bartosz', 'Grzywacz', 'Skarszewy', 'Kanada 1/1', '565728936'),
         ('Mirosław', 'Kiedrowski', 'Godziszewo', 'Tczewska 21', '794383291');

INSERT INTO ciasto(nr, nazwa, cena)
  VALUES (1, 'Szarlotka ''apple pie''', 28.00),
         (2, 'Ciasto wiśniowe ''cherry pie''', 32.00),
         (3, 'Drożdżówka z jagodami', 20.00),
         (4, 'Drożdżówka z malinami', 20.00),
         (5, 'Muffinki czek z kawałkami czek 12 szt', 1.50),
         (6, 'Muffinki z kawałkami czekolady 12 szt', 1.50),
         (7, 'Babka gotowana', 22.00),
         (8, 'Babka drożdżowa', 18.00),
         (9, 'Keks', 19.00),
         (10, 'Sernik a''la oreo', 35.00),
         (11, 'Sernik z owocami leśnymi', 25.00),
         (12, 'Miodownik z jagodową pianką', 25.00),
         (13, 'Karpatka z musem z kiwi', 26.00),
         (14, 'Jabłecznik straciatella', 24.00),
         (15, 'Ciasto rabarbarowe', 23.00),
         (16, 'Ciasto z musem truskawkowym', 27.00),
         (17, 'Ciasto truflowe', 25.00),
         (18, 'Brownie', 20.00),
         (19, '''Murzynek''', 18.00);


INSERT INTO skladniki(nr, nazwa, jednostka, w_magazynie, data_waznosci, minimum)
  VALUES (1, 'Proszek do pieczenia', 'g', 200, '2016-09-26', 100),
         (2, 'Drożdże', 'g', 50, '2016-05-26', 0),
         (3, 'Truskawki', 'g', 300,  '2016-05-22', 0),
         (4, 'Mąka przenna', 'g', 5000, '2016-11-12', 3000),
         (5, 'Mąka ziemniaczana', 'g', 2000, '2016-12-20', 1000),
         (6, 'Kakao', 'g', 400, '2016-12-07', 500),
         (7, 'Jajko', 'szt', 50,'2016-06-01', 30),
         (8, 'Masło', 'g', 500, '2016-06-22', 1000),
         (9, 'Margaryna', 'g', 600, '2016-06-26', 1000),
         (10, 'Mleko', 'ml', 4000, '2016-06-06', 2000),
         (11, 'Śmietana (30%)', 'g', 400, '2016-05-27', 500),
         (12, 'Śmietana (36%)', 'g', 0  , '2016-06-11', 500),
         (13, 'Śmietana (18%)', 'g', 0, '2016-06-11', 0),
         (14, 'Olej', 'ml', 2000,'2017-06-01', 2000),
         (15, 'Woda', 'ml',10000, '2019-04-01', 5000),
         (16, 'Soda oczyszczona', 'g', 30, '2017-03-21', 100),
         (17, 'Bakalie', 'g', 300, '2016-06-10', 0),
         (18, 'Jabłka', 'g', 3000, '2016-06-11', 0),
         (19, 'Wiśnie', 'g', 0, '2016-12-12', 0),
         (20, 'Cukier', 'g', 0, NULL, 5000),
         (21, 'Rodzynki', 'g', 0, NULL, 300),
         (22, 'Owoce kandyzowane', 'g', 0, NULL, 0),
         (23, 'Czekolada mleczna', 'g', 0, NULL, 1000),
         (24, 'Czekolada gorzka', 'g', 0, NULL, 1000),
         (25, 'Czekolada biała', 'g', 0, NULL, 1000),
         (26, 'Cynamon', 'g', 0, NULL, 100),
         (27, 'Jogurt naturalny', 'g', 0, NULL, 500),
         (28, 'Żelatyna', 'g', 0, NULL, 100),
         (29, 'Twaróg', 'g', 0, NULL, 5000),
         (30, 'Serek mascarpone', 'g', 0, NULL, 1000),
         (31, 'Cytryna', 'szt', 0, NULL, 0),
         (32, 'Cukier waniliowy', 'g', 0, NULL, 100),
         (33, 'Budyń waniliowy (opakowanie)', 'szt', 0, NULL, 10),
         (34, 'Budyń Śmietankowy (opakowanie)', 'szt', 0, NULL, 10),
         (35, 'Rabarbar', 'g', 0, NULL, 0),
         (36, 'Kiwi', 'szt', 0, NULL, 0),
         (37, 'Miód', 'g', 0, NULL, 500),
         (38, 'Galaretka fioletowa', 'szt', 0, NULL, 15),
         (39, 'Galaretka kiwi', 'szt', 0, NULL, 15),
         (40, 'Galaretka truskawkowa', 'szt', 0, NULL, 15),
         (41, 'Skondensowane mleczko niesłodzone', 'szt', 0, NULL, 3),
         (42, 'Jagody', 'g', 0, NULL, 0),
         (43, 'Sól', 'g', 0, NULL, 1000),
         (44, 'Śmietan-fix', 'szt', 0, NULL, 5),
         (45, 'Maliny', 'g', 0, NULL, 0),
         (46, 'Jeżyny', 'g', 0, NULL, 0),
         (47, 'Bułka tarta', 'g', 0, NULL, 1000),
         (48, 'Mąka krupczatka', 'g', 0, NULL, 1000),
         (49, 'Ciastka ''Oreo''', 'opak', 0, NULL, 5),
         (50, 'Galaretka pomarańczowa', 'szt', 0, NULL, 15),
         (51, 'Sok pomarańczowy', 'ml', 0, NULL, 3000),
         (52, 'Dżem truskawkowy', 'g', 0, NULL, 500),
         (53, 'Herbatniki', 'szt', 0, NULL, 100),
         (54, 'Likier amaretto', 'ml', 0, NULL, 200);
INSERT INTO proporcje(nr_ciasta, nr_skladnika, ilosc)
  VALUES (1, 4, 455),
         (1, 8, 330),
         (1, 18, 1100),
         (1, 20, 120),
         (1, 26, 20),
         (1, 15, 160),
         (2, 4, 300),
         (2, 8, 200),
         (2, 20, 200),
         (2, 19, 700),
         (2, 5, 75),
         (2, 47, 30),
         (3, 4, 630),
         (3, 2, 50),
         (3, 7, 1),
         (3, 20, 110),
         (3, 10, 250),
         (3, 43, 5),
         (3, 15, 15),
         (3, 8, 80),
         (3, 42, 400),
         (4, 4, 630),
         (4, 2, 50),
         (4, 7, 1),
         (4, 20, 110),
         (4, 10, 250),
         (4, 43, 5),
         (4, 15, 15),
         (4, 8, 80),
         (4, 45, 400),
         (5, 4, 300),
         (5, 8, 150),
         (5, 23, 150),
         (5, 1, 8),
         (5, 6, 20),
         (5, 20, 190),
         (5, 32, 10),
         (5, 7, 2),
         (5, 10, 170),
         (6, 4, 300),
         (6, 8, 150),
         (6, 23, 150),
         (6, 1, 8),
         (6, 20, 190),
         (6, 32, 10),
         (6, 7, 2),
         (6, 10, 170),
         (7, 4, 80),
         (7, 5, 275),
         (7, 8, 250),
         (7, 7, 5),
         (7, 20, 190),
         (7, 43, 5),
         (7, 1, 10),
         (8, 10, 100),
         (8, 2, 50),
         (8, 4, 370),
         (8, 20, 40),
         (8, 7, 3),
         (8, 8, 150),
         (8, 43, 5),
         (9, 4, 250),
         (9, 20, 180),
         (9, 7, 5),
         (9, 9, 250),
         (9, 16, 3),
         (9, 10, 8),
         (9, 17, 150),
         (9, 22, 150),
         (10, 29, 1000),
         (10, 20, 250),
         (10, 28, 50),
         (10, 15, 70),
         (10, 31, 1),
         (10, 11, 400),
         (10, 49, 2),
         (10, 8, 65),
         (11, 4, 200),
         (11, 8, 100),
         (11, 20, 200),
         (11, 29, 1300),
         (11, 7, 6),
         (11, 12, 100),
         (11, 5, 10),
         (11, 45, 150),
         (11, 46, 150),
         (12, 4, 400),
         (12, 8, 150),
         (12, 7, 2),
         (12, 37, 15),
         (12, 20, 150),
         (12, 16, 5),
         (12, 38, 3),
         (12, 41, 1),
         (12, 42, 100),
         (12, 25, 100),
         (13, 8, 425),
         (13, 15, 250),
         (13, 43, 2),
         (13, 1, 2),
         (13, 4, 195),
         (13, 7, 10),
         (13, 10, 1000),
         (13, 5, 25),
         (13, 20, 45),
         (13, 32, 16),
         (13, 36, 14),
         (13, 39, 2),
         (14, 20, 270),
         (14, 4, 130),
         (14, 5, 70),
         (14, 7, 3),
         (14, 8, 190),
         (14, 18, 1500),
         (14, 50, 2),
         (14, 11, 500),
         (14, 30, 250),
         (14, 27, 250),
         (14, 28, 20),
         (14, 23, 100),
         (14, 51, 300),
         (15, 4, 525),
         (15, 1, 5),
         (15, 20, 195),
         (15, 9, 190),
         (15, 7, 3),
         (15, 13, 10),
         (15, 32, 60),
         (15, 8, 125),
         (15, 35, 1000),
         (15, 52, 200),
         (16, 7, 4),
         (16, 15, 30),
         (16, 20, 190),
         (16, 4, 160),
         (16, 1, 6),
         (16, 31, 1),
         (16, 40,3),
         (16, 3, 750),
         (16, 12, 500),
         (16, 44, 2),
         (16, 28, 8),
         (16, 23, 100),
         (17, 23, 50),
         (17, 53, 32),
         (17, 30, 500),
         (17, 24, 200),
         (17, 25, 200),
         (17, 20, 5),
         (17, 31, 1),
         (17, 54, 20),
         (18, 24, 300),
         (18, 8, 200),
         (18, 7, 6),
         (18, 5, 170),
         (18, 20, 175),
         (19, 8, 200),
         (19, 20, 230),
         (19, 10, 125),
         (19, 6, 50),
         (19, 4, 340),
         (19, 1, 10),
         (19, 7, 4);

INSERT INTO zamowienie(nr_klienta, data_zlozenia, data_odbioru)
  VALUES (12, '2016-05-01', '2016-05-13'),
         (7, '2016-05-01', '2016-05-15'),
         (1, '2016-05-01', '2016-05-10'),
         (3, '2016-05-01', '2016-05-12'),
         (13, '2016-05-01', '2016-05-14'),
         (2, '2016-05-01', '2016-05-10'),
         (5, '2016-05-01', '2016-05-09'),
         (3, '2016-05-02', '2016-05-11'),
         (6, '2016-05-02', '2016-05-10'),
         (12, '2016-05-02', '2016-05-07'),
         (10, '2016-05-02', '2016-05-07'),
         (9, '2016-05-03', '2016-05-15'),
         (4, '2016-05-03', '2016-05-13'),
         (1, '2016-05-03', '2016-05-10'),
         (2, '2016-05-03', '2016-05-11'),
         (11, '2016-05-03', '2016-05-16'),
         (8, '2016-04-04', '2016-05-12'),
         (7, '2016-04-04', '2016-05-13'),
         (15, '2016-04-04', '2016-05-20'),
         (8, '2016-04-04', '2016-05-22'),
         (6, '2016-04-04', '2016-05-14'),
         (13, '2016-05-04', '2016-05-18'),
         (3, '2016-05-05', '2016-05-10'),
         (12, '2016-05-05', '2016-05-13'),
         (5, '2016-05-05', '2016-05-12'),
         (4, '2016-05-05', '2016-05-19'),
         (9, '2016-05-05', '2016-05-16'),
         (5, '2016-05-05', '2016-05-09'),
         (1, '2016-05-05', '2016-05-22'),
         (11, '2016-05-06', '2016-05-11'),
         (7, '2016-05-06', '2016-05-09'),
         (2, '2016-05-06', '2016-05-13'),
         (6, '2016-05-06', '2016-05-17'),
         (4, '2016-05-06', '2016-05-24'),
         (10, '2016-05-06', '2016-05-11');

INSERT INTO pozycje(nr_zamowienia, nr_ciasta, ilosc)
  VALUES (1, 2, 1),
         (1, 13, 2),
         (2, 12, 1),
         (3, 6, 2),
         (3, 5, 1),
         (3, 7, 1),
         (3, 11, 1),
         (4, 17, 2),
         (5, 15, 1),
         (5, 16, 1),
         (6, 10, 2),
         (6, 13, 1),
         (6, 1, 2),
         (6, 18, 2),
         (7, 14, 1),
         (8, 9, 1),
         (8, 8, 1),
         (8, 7, 1),
         (9, 11, 1),
         (9, 12, 1),
         (10, 2, 1),
         (10, 1, 2),
         (11, 4, 3),
         (11, 15, 1),
         (12, 5, 3),
         (12, 6, 2),
         (13, 13, 2),
         (14, 3, 2),
         (14, 6, 1),
         (15, 10, 2),
         (15, 18, 1),
         (16, 17, 2),
         (17, 11, 2),
         (18, 14, 3),
         (19, 1, 1),
         (19, 2, 1),
         (20, 11, 1),
         (20, 15, 1),
         (20, 6, 1),
         (21, 5, 2),
         (22, 7, 2),
         (22, 9, 1),
         (23, 16, 2),
         (24, 3, 2),
         (25, 6, 2),
         (25, 19, 1),
         (26, 15, 2),
         (26, 2, 1),
         (26, 6, 2),
         (27, 3, 2),
         (28, 11, 1),
         (29, 10, 2),
         (30, 14, 1),
         (31, 4, 5),
         (31, 5, 4),
         (32, 6, 4),
         (32, 17, 2),
         (32, 18, 3),
         (32, 14, 3),
         (33, 4, 2),
         (33, 12, 2),
         (34, 5, 2),
         (34, 12, 1),
         (34, 17, 3),
         (35, 1, 3);
