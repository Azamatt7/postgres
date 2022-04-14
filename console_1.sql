CREATE TABLE products (
       id SERIAL PRIMARY KEY,
       productName VARCHAR(30) NOT NULL,
       company VARCHAR(20) NOT NULL,
       productCount INT DEFAULT 0,
       price NUMERIC NOT NULL,
       isDiscounted BOOL
);
INSERT INTO products (productName, company, productCount, price, isDiscounted)
VALUES('iPhone X', 'Apple', 3, 76000, false),
      ('iPhone 8', 'Apple', 2, 71000, true),
      ('iPhone 7', 'Apple', 5, 42000, true),
      ('Galaxy S9', 'Samsung', 2, 46000, false),
      ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
      ('Desire 12', 'HTC', 5, 28000, true),
      ('Nokia 9', 'HMD Global', 6, 38000, true);

--1 HTC KOMPANIASYNAN BASHKA KOMPANIANYN PRODUKTULARYN ALYNYZ
SELECT * FROM products WHERE company <> 'HTC';

--2 APPLE KOMPANIASYNYN 75000MINDEN TOMONKU BAADAGY PRODUKTULARYN ALYNYZ
SELECT * FROM products WHERE company = 'Apple' AND price < 75000;

--3 BAASY 46000 JANA ANDAN OIDOKU PRODUKTULARDYN BAARYN ALYNYZ
SELECT * FROM products WHERE price >= 46000;

--4 EN KYMBAT EKI PRODUKTU ALYNYZ
SELECT * FROM products ORDER BY price DESC LIMIT 2;

--5 BAASY MINIMALNYI BOLGON PRODUKTUN ATYN ALYNYZ
SELECT * FROM products ORDER BY price LIMIT 1 ;
SELECT productName COUNT FROM products ORDER BY price LIMIT 1 ;

--6 Discount bolgon produktulardy chygarynyz
SELECT * FROM products WHERE isDiscounted = TRUE;

--7 DISCOUNT BOLBOGON PRODUKTULARDY CHYGARYNYZ
SELECT * FROM products WHERE isDiscounted = FALSE;

--8 BAARDYK PRODUKTULARDYN BAASYN KYMBATTAN ARZANGA KARAP CHYGARYNYZ
SELECT * FROM products ORDER BY price DESC ;

--9 BAARDYK PRODUKTULARDYN SUMMASYN (BAASYN) CHYGARYNYZ
SELECT SUM (price)FROM products WHERE true;

--10 EKI JANA ANDAN AZ PRODUKTUSU BAR KOMPANIALARDY ALYNYZ
SELECT company,COUNT(*)FROM products GROUP BY company having COUNT(*) <= 2;


