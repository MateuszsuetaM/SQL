drop table dostawa;
create table dostawa(
skladnik_nr       int references skladniki(nr) not null,
ilosc             int,
data_dostawy       date default null
);

drop table archiwum_klientow;
create table archiwum_klientow (
  imie 			        varchar(20),
  nazwisko 		      varchar,
  miasto 			      varchar(30),
  adres 			      varchar,
  telefon 		      char(9),
  operacja          varchar,
  data_zmiany       date
  );

  drop table archiwum_ciast;
  create table archiwum_ciast(
  nazwa     varchar,
  cena      numeric(7,2),
  operacja  varchar(10),
  data_zmiany date
  );









CREATE or replace function dostawa()
  returns trigger as
$$
begin
  update skladniki set w_magazynie=w_magazynie+new.ilosc where new.skladnik_nr=skladniki.nr;
    UPDATE dostawa set data_dostawy=current_date where data_dostawy is null;
      return new;
END;
$$ language 'plpgsql';


---------------------------------------------------------------





CREATE or replace function aktualizacja_klientow()
  returns trigger as
$$
begin

  insert into archiwum_klientow(imie, nazwisko, miasto, adres, telefon, operacja, data_zmiany)
    values(old.imie, old.nazwisko, old.miasto, old.adres, old.telefon, 'zmienione', current_date);
  return new;
END;
$$ language 'plpgsql';





CREATE or replace function usuwanie_klientow()
  returns trigger as
$$
begin
  insert into archiwum_klientow(imie, nazwisko, miasto, adres, telefon, operacja, data_zmiany)
    values(old.imie, old.nazwisko, old.miasto, old.adres, old.telefon, 'usunieto', current_date);
  return new;
END;
$$ language 'plpgsql';







CREATE or replace function aktualizacja_ciast()
  returns trigger as
$$
begin
  insert into archiwum_ciast(nazwa, cena, operacja, data_zmiany)
    values(old.nazwa, old.cena, 'zmienione', current_date);
  return new;
END;
$$ language 'plpgsql';




CREATE or replace function usuwanie_ciast()
  returns trigger as
$$
begin
  insert into archiwum_ciast(nazwa, cena, operacja, data_zmiany)
    values(old.nazwa, old.cena, 'usuniete', current_date);
  return new;
END;
$$ language 'plpgsql';





  CREATE or replace function usuwanie_klientow()
    returns trigger as
  $$
  begin
    insert into archiwum_klientow(imie, nazwisko, miasto, adres, telefon, operacja, data_zmiany)
      values(old.imie, old.nazwisko, old.miasto, old.adres, old.telefon, 'usunieto', current_date);
    return new;
  END;
  $$ language 'plpgsql';

  CREATE TRIGGER dostawa
  AFTER insert ON dostawa
  FOR EACH ROW EXECUTE PROCEDURE  dostawa();

  CREATE TRIGGER akt_ciast
  AFTER update on ciasto
  FOR EACH ROW EXECUTE PROCEDURE  aktualizacja_ciast();

  CREATE TRIGGER usuw_ciast
  AFTER delete on ciasto
  FOR EACH ROW EXECUTE PROCEDURE  usuwanie_ciast();

  CREATE TRIGGER usuw_klient
  after delete on klient
  FOR EACH ROW EXECUTE PROCEDURE  usuwanie_klientow();

  CREATE TRIGGER akt_klient
  AFTER update on klient
  FOR EACH ROW EXECUTE PROCEDURE  aktualizacja_klientow();
