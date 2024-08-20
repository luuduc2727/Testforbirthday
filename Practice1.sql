-- EX1
CREATE DATABASE Company;

-- EX2
USE Company;

-- 3. Write SQL statements to define tables of “Company” databases with contraints and columns illustrated by igures below. You should determine appropriate datatype for each column.
CREATE TABLE EMPLOYEE (
    Fname VARCHAR(10),
    Minit CHAR(1),
    Lname VARCHAR(30),
    Ssn CHAR(10),
    Bdate CHAR(8),
    Sex CHAR(1),
    Salary DECIMAL(10,3),
    Super_ssn CHAR(10),
    Dno INT
);


CREATE TABLE DEPARTMENT (
    Dname VARCHAR(15),
    Dnumber INT,
    Mgr_ssn CHAR(9),
    Mgr_start_date CHAR(19)
);

CREATE TABLE DEPT_LOCATION (
    Dnumber INT,
    Dlocation VARCHAR(20)
);

CREATE TABLE PROJECT (
    Pname VARCHAR(30),
    Pnumber INT,
    Plocation VARCHAR(50),
    Dnum INT
);
CREATE TABLE WORKS_ON (
    Essn CHAR(9),
    Pno INT,
    Hours DECIMAL(10,2)
);
CREATE TABLE DEPENDENT (
    Essn CHAR(9),
    Dependent_name VARCHAR(255),
    Sex CHAR(1),
    Bdate CHAR(10),
    Relationship VARCHAR(20)
);

-- 4. Add column Partner_ssn to the table EMPLOYEE. This column indicates the SSN of spouse of each employee. For those who are now single, the value should be NULL.
ALTER TABLE Employee
ADD Partner_ssn CHAR(11);

-- 5. Write SQL statements to insert 3 sample rows to each table.
INSERT INTO EMPLOYEE VALUES ('Duc', 'A', 'Luu', '101010101', '27-07-2004', 'M', 270704, '123123123', 1, '000000000');
INSERT INTO EMPLOYEE VALUES ('Dung', 'B', 'Pham', '202020202', '19-05-2004', 'M', 190504, '456456456', 1, '000000001');
INSERT INTO EMPLOYEE VALUES ('Kien', 'C', 'Phan', '303030303', '26-03-2004', 'M', 260304, '789789789', 1, '000000002');

-- 6. Write SQL statements to delete the tables you created.
DROP TABLE Employee;













