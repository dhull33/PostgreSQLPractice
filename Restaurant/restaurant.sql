/* Exercise 1 for PostgreSQL

Create a database called 'restaurant'*/
CREATE DATABASE restaurant;

/* Create a table called restaurant and populate data fields */
CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR NOT NULL,
  distance INTEGER DEFAULT 0,
  stars INTEGER DEFAULT 0,
  category VARCHAR NOT NULL,
  fave_dish VARCHAR NOT NULL,
  takeout BOOLEAN DEFAULT FALSE,
  last_ate DATE NOT NULL
);

INSERT INTO restaurant VALUES(
    DEFAULT, 'Ashleys Donuts', 2.1, 8.0, 'Donuts', 'Old Fashioned Cakes', FALSE,
    to_date('23 June 2015', 'DD Mon YYYY')
);

UPDATE restaurant SET takeout=TRUE WHERE id=1;

INSERT INTO restaurant VALUES(
    DEFAULT, 'A 2nd Cup', 1.1, 9.4, 'Coffee', 'Iced Coffee', TRUE,
    to_date('07 Aug 2014', 'DD Mon YYYY')
);


INSERT INTO restaurant VALUES(
    DEFAULT, 'Blacksmith', 5.4, 9.2, 'Cafe', 'Biscuits and Gravy', TRUE,
    to_date('12 Feb 2018', 'DD Mon YYYY')
);


/* Writing Queries */
SELECT name FROM restaurant WHERE stars >8;

SELECT fave_dish FROM restaurant WHERE stars >8;

SELECT id FROM restaurant WHERE name='Blacksmith';

SELECT * FROM restaurant WHERE category='BBQ';

SELECT * FROM restaurant WHERE takeout=TRUE;

SELECT * FROM restaurant WHERE takeout=TRUE AND category='BBQ';

SELECT * FROM restaurant WHERE distance <= 2;

SELECT * FROM restaurant WHERE last_ate >= '2018-03-24' AND last_ate < '2018-03-30';

SELECT * FROM restaurant WHERE last_ate >= '2018-03-24' AND last_ate < '2018-03-30' AND stars > 8;