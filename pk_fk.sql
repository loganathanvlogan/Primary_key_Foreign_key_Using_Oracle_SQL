-----Primary key and Foriegn key

/* PRIMARY KEY :

    1. Primary key is a column that can be uniquely identified by each record in a table
    2. It contains unique value
    3. It doesn't accept any NULL values
    4. In a table we have only one primary key
    
*/    
    
----CREATE TABLE WITH PRIMARY KEY

CREATE table patient
(
patient_no number NOT NULL,
patient_name varchar2(10) NOT NULL,
age number(10),
PRIMARY KEY(patient_no)
);

-----INSERT SOME VALUES IN PATIENT TABLE

INSERT INTO patient values(1,'Arun',20);
INSERT INTO patient values(2,'Varun',30);
INSERT INTO patient values(3,'Tharun',40);

SELECT * from patient;

/* FORIEGN KEY :

    1. Foreign key is a collection fields in one table that refers the primary key of another table
    2. Foreign key is like a child table
    3. Primary key is a parent table
    4. In a table we have many foriegn key
    5. It allow null values
    
*/

----CREATE TABLE WITH FOREIGN KEY


CREATE table doctors
(
doctor_no number(10) NOT NULL,
doctor_name varchar2(20) NOT NULL,
patient_no number(10) NOT NULL,
FOREIGN KEY(patient_no) REFERENCES patient(patient_no)
);

-----INSERT SOME VALUES IN DOCTORS TABLE

INSERT INTO doctors values(111,'Arun1',1);
INSERT INTO doctors values(222,'Varun1',2);
INSERT INTO doctors values(333,'Tharun1',3);

select * from doctors;






