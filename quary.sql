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

