INSERT INTO dostawa(skladnik_nr, ilosc)
  values(1,10000),
        (11,10000);

UPDATE ciasto set cena=2000 where nr=12;

DELETE FROM ciasto WHERE nr=12;

DELETE FROM klient WHERE nr=12;

UPDATE klient SET telefon=000000000 WHERE nr=1;

select * from archiwum_klientow;

select * from archiwum_ciast;

select * from dostawa;
