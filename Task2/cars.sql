
BEGIN;

SET client_encoding = 'UTF8';
CREATE TABLE transactions (
    id integer NOT NULL,
    transactiondate date not null,
    customername text NOT NULL,
    customerphone text not null,
    salesperson text NOT NULL,
    carid integer NOT NULL
);

CREATE TABLE cars (
    id integer NOT NULL,
    modelname text NOT NULL,
    manufacturer text NOT NULL,
    serialnumber integer NOT NULL,
    weight integer NOT NULL,
    price real NOT NULL
);

INSERT INTO 
transactions
VALUES
(1,'2022-01-01 00:00:00','90000000','Liam','Tim',1),
(2,'2022-01-02 00:00:00','90000001','Noah','Bob',2),
(3,'2022-01-03 00:00:00','90000002','Oliver','John',3),
(4,'2022-01-04 00:00:00','90000003','Elijah','Tim',4),
(5,'2022-01-05 00:00:01','90000004','Bryan','Tim',5),
(6,'2022-01-06 00:00:00','90000005','Tobias','John',3),
(7,'2022-01-07 00:00:00','90000006','Liam','Bob',3),
(8,'2022-01-08 00:02:00','90000007','Noah','Tim',2),
(9,'2022-01-09 00:00:00','90000008','Liam','Bob',5),
(10,'2022-01-10 00:00:00','90000009','Fiona','Bob',4);


INSERT INTO 
cars
VALUES
(1,'1-Series','BMW',1001,5000,200000),
(2,'100','Audi',1002,5500,300000),
(3,'124-Spider','FIAT',1003,5000,250000),
(4,'1500 Club Coupe','GMC',1004,6000,200000),
(5,'1500 Classic Crew Cab','Ram',1005,3500,150000);






ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);

ALTER TABLE ONLY cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_cars_fkey FOREIGN KEY (carid) REFERENCES cars(id);


COMMIT;

ANALYZE transactions;
ANALYZE cars;


