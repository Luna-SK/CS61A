.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color="blue" AND pet="dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color="blue" AND pet="dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING COUNT(*)=1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students as a, students as b WHERE a.time<b.time and a.pet=b.pet and a.song=b.song;


CREATE TABLE sevens AS
  SELECT seven FROM students, numbers WHERE students.time=numbers.time and number=7 and "7"="True";


CREATE TABLE average_prices AS
  SELECT category, sum(MSRP)/count(*) as average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) as lowest_price FROM inventory GROUP BY item;


CREATE TABLE shopping_list AS
  SELECT item, store FROM products, lowest_prices WHERE item=name GROUP BY category HAVING min(MSRP/rating);


CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) FROM shopping_list as a, stores as b WHERE a.store=b.store;

