--klienci nie posiadający zamówień

select klient.nr, imie, nazwisko from (
  klient inner join zamowienie
  on klient.nr not in (select nr_klienta from zamowienie)
)
group by klient.nr;


--usuwanie klientow nie posiadajacych zamowien

delete from klient where nr not in(
  select nr_klienta from zamowienie
)
-- Skladniki potrzebne do ciasta nr 1

select nr, nazwa, ilosc, jednostka
  from (proporcje inner join skladniki
        on skladniki.nr=proporcje.nr_skladnika
        and nr_ciasta=1
)
;


-- Skladniki potrzebne do ciasta o nazwie zawierajacej "Murzynek"

select ciasto.nr, skladniki.nazwa, ilosc, jednostka
  from ((proporcje inner join skladniki
        on skladniki.nr=proporcje.nr_skladnika
      )inner join ciasto
        on nr_ciasta=ciasto.nr
        and ciasto.nazwa LIKE '%Murzynek%'
)
;

--Skladniki potrzebne do zamówienia nr 11

select  nr_zamowienia, skladniki.nazwa, sum(proporcje.ilosc*pozycje.ilosc) as suma
          from((  proporcje inner join skladniki
            on skladniki.nr=proporcje.nr_skladnika
          ) inner join pozycje
          on pozycje.nr_ciasta=proporcje.nr_ciasta
          and nr_zamowienia=11
)group by nr_zamowienia, skladniki.nazwa
;



-- skladniki potrzebne do przygotowania zamowienia o numerze 11 z uwzględnieniem spiżarni

select nr_zamowienia, skladnik, ilosc-jest as czeba from(
select nr_zamowienia, nazwa as skladnik, sum(pozycje.ilosc*proporcje.ilosc) as ilosc, skladniki.w_magazynie as jest
  from((
       pozycje inner join proporcje
        on pozycje.nr_ciasta=proporcje.nr_ciasta
        and pozycje.nr_zamowienia=11
)       inner join skladniki
        on nr_skladnika=skladniki.nr
)
group by nr_zamowienia, nazwa, skladniki.w_magazynie
)as foo
;


-- Składniki potrzebne do przygotowania zamowień na 13.05.2016

select  skladniki.nazwa, sum(proporcje.ilosc*pozycje.ilosc) as suma
          from(((  proporcje inner join skladniki
            on skladniki.nr=proporcje.nr_skladnika
          ) inner join pozycje
          on pozycje.nr_ciasta=proporcje.nr_ciasta
        )inner join zamowienie
        on pozycje.nr_zamowienia=zamowienie.nr
        and data_odbioru='2016-05-13'
)group by skladniki.nazwa
;

-- Skladniki na 13.05.2016 z uwzglednieniem spiżarni

select  skladniki.nazwa, sum(proporcje.ilosc*pozycje.ilosc)-w_magazynie as suma
          from(((  proporcje inner join skladniki
            on skladniki.nr=proporcje.nr_skladnika
          ) inner join pozycje
          on pozycje.nr_ciasta=proporcje.nr_ciasta
        )inner join zamowienie
        on pozycje.nr_zamowienia=zamowienie.nr
        and data_odbioru='2016-05-13'
)group by skladniki.nazwa, w_magazynie
;

-- ilosc ciast zamawionych w maju

SELECT sum(elo) as razem_zamowionych_ciast from(
  select nazwa, count(ilosc) as elo from((
  ciasto inner join pozycje
  on nr=nr_ciasta) inner join zamowienie
  on zamowienie.nr=pozycje.nr_zamowienia
  and data_zlozenia > '2016-04-30'
  and data_zlozenia < '2016-06-01'
)group by nazwa
) as foo;

-- ilosc zamowien danego ciasta w maju

SELECT nazwa, sum(ilosc) as elo from((
  ciasto inner join pozycje
  on nr=nr_ciasta)inner join zamowienie
  on nr_zamowienia=zamowienie.nr
  and data_zlozenia > '2016-04-30'
  and data_zlozenia < '2016-06-01'
  )
GROUP BY nazwa;

select * from skladniki where data_waznosci is null;

select * from skladniki where data_waznosci is not null;


CREATE VIEW ciasta AS
SELECT *
FROM ciasto
WHERE cena is not null;



UPDATE ciasto set cena=2000 where nr=5;

SELECT nr
FROM ciasto
EXCEPT
SELECT nr_ciasta
FROM pozycje;


CREATE TEMP TABLE towar_zysk (
 nr int PRIMARY KEY,
 opis varchar(64) , koszt numeric(7,2) ,
 cena numeric(7,2) , zysk numeric(7,2) )
INSERT INTO towar_zysk
 SELECT *, cena – koszt AS zysk FROM towar
