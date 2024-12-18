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



CREATE TABLE tablethree
(
	id int(5),
    name varchar(255),
    dob date,
    dept varchar(255),
    salary int(8),
    city varchar(255),
    pin int(6),
    email varchar(255)
);



INSERT INTO tablethree
VALUES
(101,"Abhiram",'1997-02-18','Software',30000,'Javalli',577226,'abhirambs97@gmail.com'),
(102,"Amith",'1988-04-03','Accountant',15000,'Thirthalli',577220,'amith@gmail.com'),
(103,"Tanu",'1990-01-01','HR',25000,'Agumbe',568526,'tanu@gmail.com'),
(104, "lavanya", '1998-06-20', 'Developer',20000, 'Badravati', 576030, 'lavanya@gmail.com'),
(105, "suchith", '1995-08-15', 'Developer',23000,'Chikkamagalure', 584070, 'suchith@gmail.com'),
(106, "lavanya", '1998-06-20', 'Developer',24000,'Badravati', 576030, 'lavanya@gmail.com');



SELECT * FROM tablethree;

id	    name	    dob	            dept	        salary	    city	        pin	        email	
101	    Abhiram	    1997-02-18	    Software	    30000	    Javalli	        577226	    abhirambs97@gmail.com	
102	    Amith	    1988-04-03	    Accountant	    15000	    Thirthalli	    577220	    amith@gmail.com	
103	    Tanu	    1990-01-01	    HR	            25000	    Agumbe	        568526	    tanu@gmail.com	
104	    lavanya	    1998-06-20	    Developer	    20000	    Badravati	    576030	    lavanya@gmail.com	
105	    suchith	    1995-08-15	    Developer	    23000	    Chikkamagalure	584070	    suchith@gmail.com	
106	    lavanya	    1998-06-20	    Developer	    24000	    Badravati	    576030	    lavanya@gmail.com	

# text

SELECT * FROM tablethree WHERE name BETWEEN 'L' AND 'T';

id	    name	    dob	            dept	        salary	    city	        pin	        email	
104	    lavanya	    1998-06-20	    Developer	    20000	    Badravati	    576030	    lavanya@gmail.com	
105	    suchith	    1995-08-15	    Developer	    23000	    Chikkamagalure	584070	    suchith@gmail.com	
106	    lavanya	    1998-06-20	    Developer	    24000	    Badravati	    576030	    lavanya@gmail.com	

# date

SELECT * FROM tablethree WHERE dob BETWEEN '1997-01-01' AND '1999-12-31';


id	    name	    dob	            dept	        salary	    city	        pin	        email	
101	    Abhiram	    1997-02-18	    Software	    30000	    Javalli	        577226	    abhirambs97@gmail.com
104	    lavanya	    1998-06-20	    Developer	    20000	    Badravati	    576030	    lavanya@gmail.com	
106	    lavanya	    1998-06-20	    Developer	    24000	    Badravati	    576030	    lavanya@gmail.com	


UPDATE tablethree SET name = "Manoj", dob = '1996-09-26', dept = 'IT', salary = 25000, pin = 560000, email = 'manoj@gmail.com' WHERE id = 106;



SELECT * FROM tablethree

id	    name	    dob	            dept	        salary	    city	        pin	        email	
101	    Abhiram	    1997-02-18	    Software	    30000	    Javalli	        577226	    abhirambs97@gmail.com	
102	    Amith	    1988-04-03	    Accountant	    15000	    Thirthalli	    577220	    amith@gmail.com	
103	    Tanu	    1990-01-01	    HR	            25000	    Agumbe	        568526	    tanu@gmail.com	
104	    lavanya	    1998-06-20	    Developer	    20000	    Badravati	    576030	    lavanya@gmail.com	
105	    suchith	    1995-08-15	    Developer	    23000	    Chikkamagalure	584070	    suchith@gmail.com	
106	    Manoj	    1996-09-26	    IT	            25000	    Badravati	    560000	    manoj@gmail.com	



# NOT BETWEEN Operator

# number


SELECT * FROM tabletwo WHERE id NOT BETWEEN 2 AND 4;


id	    name	    city	        pin	
1	    Abhiram	    Javalli	        577226	
5	    Amith	    Thirthahalli	NULL	


# text

SELECT * FROM tablethree WHERE name NOT BETWEEN 'L' AND 'T';

id	    name	    dob	            dept	        salary	    city	        pin	        email	
101	    Abhiram	    1997-02-18	    Software	    30000	    Javalli	        577226	    abhirambs97@gmail.com	
102	    Amith	    1988-04-03	    Accountant	    15000	    Thirthalli	    577220	    amith@gmail.com	
103	    Tanu	    1990-01-01	    HR	            25000	    Agumbe	        568526	    tanu@gmail.com	


# date

SELECT * FROM tablethree WHERE dob NOT BETWEEN '1997-01-01' AND '1999-12-31';

id	    name	    dob	            dept	        salary	    city	        pin	        email	
102	    Amith	    1988-04-03	    Accountant	    15000	    Thirthalli	    577220	    amith@gmail.com	
103	    Tanu	    1990-01-01	    HR	            25000	    Agumbe	        568526	    tanu@gmail.com	
105	    suchith	    1995-08-15	    Developer	    23000	    Chikkamagalure	584070	    suchith@gmail.com	
106	    Manoj	    1996-09-26	    IT	            25000	    Badravati	    560000	    manoj@gmail.com	







# Between with IN Operator

# AND operator


SELECT * FROM tablethree WHERE(salary BETWEEN 20000 AND 30000) AND dept IN('HR','Software','Accountant');

id	    name	    dob	            dept	        salary	    city	        pin	        email	
101	    Abhiram	    1997-02-18	    Software	    30000	    Javalli	        577226	    abhirambs97@gmail.com	    
103	    Tanu	    1990-01-01	    HR	            25000	    Agumbe	        568526	    tanu@gmail.com	




# OR operator


SELECT * FROM tablethree WHERE(salary BETWEEN 25000 AND 30000) OR dept IN('HR','Software','Accountant');

id	    name	    dob	            dept	        salary	    city	        pin	        email
101	    Abhiram	    1997-02-18	    Software	    30000	    Javalli	        577226	    abhirambs97@gmail.com	
102	    Amith	    1988-04-03	    Accountant	    15000	    Thirthalli	    577220	    amith@gmail.com	
103	    Tanu	    1990-01-01	    HR	            25000	    Agumbe	        568526	    tanu@gmail.com	
106	    Manoj	    1996-09-26	    IT	            25000	    Badravati	    560000	    manoj@gmail.com	
