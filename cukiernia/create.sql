CREATE DATABASE cukiernia WITH ENCODING 'UTF-8';
DROP TABLE proporcje;
DROP TABLE skladniki;
DROP TABLE pozycje;
DROP TABLE ciasto;
DROP TABLE zamowienie;
DROP TABLE klient;

CREATE TABLE klient
(
nr 			          SERIAL NOT NULL PRIMARY KEY,
imie 			        varchar(20) NOT NULL,
nazwisko 		      varchar NOT NULL,
miasto 			      varchar(30) NOT NULL,
adres 			      varchar NOT NULL,
telefon 		      char(9) NOT NULL
);
CREATE TABLE zamowienie
(
nr 			          SERIAL NOT NULL PRIMARY KEY,
nr_klienta 		    int NOT NULL REFERENCES klient(nr) on delete cascade,
data_zlozenia 		date,
data_odbioru 		  date NOT NULL
);
CREATE TABLE ciasto
(
nr 			          int NOT NULL PRIMARY KEY unique,
nazwa 			      varchar(45) NOT NULL,
cena 			        numeric(7,2) NOT NULL
);
CREATE TABLE pozycje
(
nr_zamowienia 		int NOT NULL REFERENCES zamowienie(nr) on delete cascade,
nr_ciasta 		    int NOT NULL REFERENCES ciasto(nr) on delete cascade,
ilosc 			      int NOT NULL
);
CREATE TABLE skladniki
(
nr			          int	NOT NULL unique PRIMARY KEY,
nazwa			        varchar	NOT NULL unique,
jednostka         varchar(10),
w_magazynie       int DEFAULT 0,
data_waznosci     date,
minimum           int DEFAULT 0
);
CREATE TABLE proporcje
(
nr_ciasta 		    int NOT NULL REFERENCES ciasto(nr) on delete cascade,
nr_skladnika		  int NOT NULL REFERENCES skladniki(nr),
ilosc			        int NOT NULL
);
