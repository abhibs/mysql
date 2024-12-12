CREATE DATABASE practice;


SHOW DATABASES;

Database
abhi3
abhiramexcel
alpha_attica
asterisk
attendence
attica
atticaattendance
atticacctv
atticaexcel
atticaexcelsheets
atticagold
cctv
cctvrtsp
chat
excel
information_schema
mysql
newatticaexcel
performance_schema
phpmyadmin
practice
project-one
project-two
python-tkinter-api
test




USE practice;


CREATE TABLE tableOne
(
	name varchar(255),
    age integer(2),
    address varchar(255)
);


SHOW TABLES;

Tables_in_practice
tableone



DESC tableOne;

name	    varchar(255)	YES		NULL		
age	        int(2)	        YES		NULL		
address	    varchar(255)	YES		NULL	



INSERT INTO tableone(name, age, address)
VALUES
("Abhiram", 27, "Javalli")




SELECT * FROM tableone;


name        age     address
Abhiram     27  	Javalli	



INSERT INTO tableone
VALUES
("Anjan", 26, "Balekoppa");



SELECT * FROM tableone;

name    	age	    address	
Abhiram	    27	    Javalli	
Anjan	    26	    Balekoppa	



INSERT INTO tableone(age, address,name)
VALUES
(33, "Honnekoppa", "Aravind")



SELECT * FROM tableone;


name    	age 	address	
Abhiram 	27  	Javalli	
Anjan   	26  	Balekoppa	
Aravind 	33  	Honnekoppa	



INSERT INTO tableone(name,age,address)
VALUES
("Anitha", 35, "Honnekoppa"),
("Anushree", 30, "Balekoppa");



SELECT * FROM tableone;


name    	age 	address	
Abhiram 	27  	Javalli	
Anjan   	26  	Balekoppa	
Aravind 	33  	Honnekoppa	
Anitha  	35  	Honnekoppa	
Anushree	30  	Balekoppa	


INSERT INTO tableone
VALUES
("Surabi", 29, "Bangalore"),
("Sarita", 32, "Bangalore");




SELECT * FROM tableone;


name    	age 	address	
Abhiram 	27  	Javalli	
Anjan   	26  	Balekoppa	
Aravind 	33  	Honnekoppa	
Anitha  	35  	Honnekoppa	
Anushree    30  	Balekoppa	
Surabi  	29  	Bangalore	
Sarita  	32  	Bangalore	



INSERT INTO tableone(age, address,name)
VALUES
(28, "Udupi", "Manu"),
(30, "Siddapura", "Anu");


SELECT * FROM tableone;

name    	age 	address	
Abhiram 	27  	Javalli	
Anjan   	26  	Balekoppa	
Aravind 	33  	Honnekoppa	
Anitha  	35  	Honnekoppa	
Anushree	30  	Balekoppa	
Surabi  	29  	Bangalore	
Sarita  	32  	Bangalore	
Manu    	28  	Udupi	
Anu 	    30  	Siddapura	



SELECT name FROM tableone;

name	
Abhiram	
Anjan	
Aravind	
Anitha	
Anushree	
Surabi	
Sarita	
Manu	
Anu	



SELECT name, address FROM tableone;

name	address	
Abhiram	Javalli	
Anjan	Balekoppa	
Aravind	Honnekoppa	
Anitha	Honnekoppa	
Anushree	Balekoppa	
Surabi	Bangalore	
Sarita	Bangalore	
Manu	Udupi	
Anu	Siddapura	



INSERT INTO tableone(name,age,address)
VALUES
('Srinivasa ''s Company', 50, 'Javalli'),
('Manasa \'s Company', 45, 'Javlli');




SELECT * FROM tableone;


name                	age	    address	
Abhiram             	27	    Javalli	
Anjan               	26	    Balekoppa	
Aravind             	33	    Honnekoppa	
Anitha              	35	    Honnekoppa	
Anushree	            30	    Balekoppa	
Surabi              	29	    Bangalore	
Sarita              	32	    Bangalore	
Manu                	28	    Udupi	
Anu	                    30      Siddapura	
Srinivasa 's Company	50	    Javalli	
Manasa 's Company   	45	    Javlli	


SELECT * FROM tableone LIMIT 3;

name    	age 	address	
Abhiram 	27  	Javalli	
Anjan   	26  	Balekoppa	
Aravind 	33  	Honnekoppa	



SELECT * FROM tableone LIMIT 1,3;


name	age	address	
Anjan	26	Balekoppa	
Aravind	33	Honnekoppa	
Anitha	35	Honnekoppa	



SELECT * FROM tableone LIMIT 4,10;

name	age	address	
Anushree	30	Balekoppa	
Surabi	29	Bangalore	
Sarita	32	Bangalore	
Manu	28	Udupi	
Anu	30	Siddapura	
Srinivasa 's Company	50	Javalli	
Manasa 's Company	45	Javlli	


CREATE TABLE tabletwo
(
	id int(4),
    name varchar(255),
    city varchar(255),
    pin int(6)
);


SHOW TABLES;

tableone	
tabletwo	


INSERT INTO tabletwo
VALUES
(1, 'Abhiram', 'Javalli', 577226),
(2, 'Anjan', 'Balekoppa', 577200),
(3, 'Aravind', 'Honnekoppa', 577300),
(4, 'Anitha', 'Honnekoppa', 577300);



SELECT * FROM tabletwo;

id	    name	    city	        pin	
1	    Abhiram	    Javalli	        577226	
2	    Anjan	    Balekoppa	    577200	
3	    Aravind	    Honnekoppa	    577300	
4	    Anitha	    Honnekoppa	    577300	


INSERT INTO tabletwo(id,name,city)
VALUES
(5, 'Amith', 'Thirthahalli');




SELECT * FROM tabletwo;

id	name	    city	        pin	
1	Abhiram	    Javalli	        577226	
2	Anjan	    Balekoppa	    577200	
3	Aravind	    Honnekoppa	    577300	
4	Anitha	    Honnekoppa	    577300	
5	Amith	    Thirthahalli	NULL	



# where with = operator

SELECT * FROM tabletwo WHERE id = 1;

1	Abhiram	Javalli	577226	




# where with = operator

SELECT * FROM tabletwo WHERE name = "Abhiram";
id	name	    city	        pin	
1	Abhiram	    Javalli	        577226	




# where with >= operator



SELECT * FROM tabletwo WHERE id >= 3;

id	    name	    city	        pin	
3	    Aravind	    Honnekoppa	    577300	
4	    Anitha	    Honnekoppa	    577300	
5	    Amith	    Thirthahalli	NULL	



SELECT * FROM tabletwo WHERE id <= 3;

id	    name	    city	        pin	
1	    Abhiram	    Javalli	        577226	
2	    Anjan	    Balekoppa	    577200	
3	    Aravind	    Honnekoppa	    577300	


SELECT * FROM tabletwo WHERE city > 'C';

id	    name	    city	        pin	
1	    Abhiram	    Javalli	        577226	
3	    Aravind	    Honnekoppa	    577300	
4	    Anitha	    Honnekoppa	    577300	
5	    Amith	    Thirthahalli	NULL	


SELECT * FROM tabletwo WHERE city < 'C';

id	    name	    city	        pin	
2	    Anjan	    Balekoppa	    577200	



# where with != (not equal) operator

SELECT * FROM tabletwo WHERE id != 1;

id  	name	    city	        pin	
2   	Anjan	    Balekoppa	    577200	
3   	Aravind	    Honnekoppa	    577300	
4   	Anitha	    Honnekoppa	    577300	
5   	Amith	    Thirthahalli	NULL	



# where with <> (not equal) operator

SELECT * FROM tabletwo WHERE id <> 1;

id  	name	    city	        pin	
2   	Anjan	    Balekoppa	    577200	
3   	Aravind	    Honnekoppa	    577300	
4   	Anitha	    Honnekoppa	    577300	
5   	Amith	    Thirthahalli	NULL	


# is null operator 

SELECT * FROM tabletwo WHERE pin IS NULL;

id  	name	    city	        pin	
5	    Amith	    Thirthahalli	NULL	


SELECT * FROM tabletwo WHERE pin IS NOT NULL;


id	    name	    city	    pin	
1	    Abhiram	    Javalli	    577226	
2	    Anjan	    Balekoppa	577200	
3	    Aravind	    Honnekoppa	577300	
4	    Anitha	    Honnekoppa	577300	


AND operator

SELECT * FROM tabletwo WHERE id = 1 AND name = "Abhiram";

id	    name	    city	    pin	
1	    Abhiram	    Javalli	    577226	


SELECT * FROM tabletwo WHERE id = 1 AND name = "Anjan";

id	    name	    city	    pin	





# OR operator


SELECT * FROM tabletwo WHERE id = 1 OR name = "Anjan";


id	    name	    city	    pin	
1	    Abhiram	    Javalli	    577226	
2	    Anjan	    Balekoppa	577200	


SELECT * FROM tabletwo WHERE id = 10 OR name = "Abhiram";

id	    name	    city	    pin	
1	    Abhiram	    Javalli	    577226	



SELECT * FROM tabletwo WHERE name = "Abhiram" OR id = 10;

id	    name	    city	    pin	
1	    Abhiram	    Javalli	    577226	



SELECT * FROM tabletwo WHERE name = "Abhi" OR id = 10;

id	    name	    city	    pin	


# combination of AND & OR

SELECT * FROM tabletwo WHERE city = 'Honnekoppa' AND (id = 3 OR name = "Anitha")

id	    name	    city	        pin	
3	    Aravind	    Honnekoppa	    577300	
4	    Anitha	    Honnekoppa	    577300	



# IN Operator

SELECT * FROM `tabletwo` WHERE name IN("Abhiram","Anjan")

id	    name	    city	    pin	
1	    Abhiram	    Javalli	    577226	
2	    Anjan	    Balekoppa	577200	


# NOT IN Operator


SELECT * FROM `tabletwo` WHERE name NOT IN("Abhiram","Anjan");

id	    name	    city	        pin	
3	    Aravind	    Honnekoppa	    577300	
4	    Anitha	    Honnekoppa	    577300	
5	    Amith	    Thirthahalli	NULL	


# BETWEEN Operator

# number

SELECT * FROM `tabletwo` WHERE id BETWEEN 2 AND 4;

id	    name	    city	        pin	
2	    Anjan	    Balekoppa	    577200	
3	    Aravind	    Honnekoppa	    577300	
4	    Anitha	    Honnekoppa	    577300	
