use practice;
create table donor(id int,name varchar(255),gender varchar(10),city varchar(50),blood_group varchar(10),amount int);
create table acceptor(id int,name varchar(255),gender varchar(10),city varchar(50),blood_group varchar(10),amount int);
insert into donor values(1,'MARIA','F','Warne, NH','AB+',7),(2,'DOROTHY','F','East Natchitoches, PA','AB+',3),(3,'CHARLES','M','East Natchitoches, PA','A-',6),(4,'DOROTHY','F','East Natchitoches PA','AB+',9),(5,'MICHAEL','M','Warne, NH','A+',1);
INSERT INTO ACCEPTOR VALUES(1,'LINDA','F','Warne, NH','A+',9),(2,'CHARLES','M','Warne, NH','AB+',8),(3,'RICHARD','M','East Natchitoches, PA','AB+',3),(4,'LINDA','F','East Natchitoches, PA','A+',1),(5,'PATRICIA','F','Warne, NH','A+',5);
SELECT * FROM DONOR;
SELECT * FROM ACCEPTOR;
SELECT d.CITY, SUM(d.AMOUNT) / SUM(a.AMOUNT) AS RATIO
FROM DONOR d
LEFT JOIN ACCEPTOR a ON d.CITY = a.CITY
GROUP BY d.CITY
ORDER BY RATIO DESC, CITY
LIMIT 2;