SQL> CREATE TABLE Employee
    (
       Emp_ID              NUMBER(5)  PRIMARY KEY,
       Emp_Name            VARCHAR2(20)  NOT NULL,
       Gender              CHAR(1)            CHECK (Gender IN ('M','F','O')),
       Department          VARCHAR2(10)  NOT NULL,
       Designation         VARCHAR2(20),
       Salary              NUMBER(10,2)  CHECK (Salary > 0),
       Bonus               NUMBER(10,2),
       Experience          NUMBER(4,1)  CHECK (Experience >= 0),
       City                VARCHAR2(20),
       Email               VARCHAR2(50)                         CONSTRAINT UK_Employee_Email UNIQUE,
       Mobile_No           VARCHAR2(10),
       Joining_Date        DATE,
       Birth_Date          DATE,
       Employment_Type     VARCHAR2(20)  DEFAULT 'Permanent'  CHECK (Employment_Type IN ('Permanent','Contract','Intern')),
       Performance_Rating  NUMBER(3,1)
                           CONSTRAINT CHK_Employee_Rating
                           CHECK (Performance_Rating BETWEEN 0 AND 5)
   );

Table created.


SQL> INSERT INTO Employee
  2  VALUES (101, 'Rahul Patel', 'M', 'IT', 'Software Developer',
  3   65000, 5000, 3.5, 'Ahmedabad',
  4   'rahul.patel@gmail.com', '9876543210',
  5   TO_DATE('15-06-2022','DD-MM-YYYY'),
  6   TO_DATE('12-04-1998','DD-MM-YYYY'),
  7   'Permanent', 4.2);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (102, 'Neha Shah', 'F', 'HR', 'HR Executive',
  3   48000, 3000, 5.0, 'Surat',
  4   'neha.shah@gmail.com', '9876543211',
  5   TO_DATE('10-03-2020','DD-MM-YYYY'),
  6   TO_DATE('25-08-1996','DD-MM-YYYY'),
  7   'Permanent', 4.5);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (103, 'Amit Mehta', 'M', 'Sales', 'Sales Executive',
  3   42000, 7000, 2.5, 'Vadodara',
  4   'amit.mehta@gmail.com', '9876543212',
  5   TO_DATE('20-07-2023','DD-MM-YYYY'),
  6   TO_DATE('10-11-1999','DD-MM-YYYY'),
  7   'Contract', 3.8);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES
  3  (104, 'Priya Desai', 'F', 'IT', 'Project Manager',
  4   95000, 15000, 8.0, 'Ahmedabad',
  5   'priya.desai@gmail.com', '9876543213',
  6   TO_DATE('05-02-2018','DD-MM-YYYY'),
  7   TO_DATE('18-01-1992','DD-MM-YYYY'),
  8   'Permanent', 4.8);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (105, 'Karan Joshi', 'M', 'Finance', 'Accountant',
  3   55000, 4500, 6.5, 'Rajkot',
  4   'karan.joshi@gmail.com', '9876543214',
  5   TO_DATE('12-11-2021','DD-MM-YYYY'),
  6   TO_DATE('05-07-1995','DD-MM-YYYY'),
  7   'Permanent', 3.9);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (106, 'Riya Mehta', 'F', 'HR', 'HR Manager',
  3   72000, 8000, 9.0, 'Ahmedabad',  'riya.mehta@gmail.com', '9876543215',
  4   TO_DATE('18-06-2017','DD-MM-YYYY'),
  5   TO_DATE('22-03-1990','DD-MM-YYYY'),
  6   'Permanent', 4.7);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (107, 'Jay Shah', 'M', 'IT', 'Senior Developer',
  3   82000, NULL, 7.5, 'Surat',  'jay.shah@gmail.com', '9876543216',
  4   TO_DATE('25-08-2019','DD-MM-YYYY'),
  5   TO_DATE('30-09-1993','DD-MM-YYYY'),
  6   'Permanent', 4.1);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (108, 'Pooja Patel', 'F', 'Sales', 'Sales Manager',
  3   68000, 10000, 7.0, 'Vadodara',  'pooja.patel@gmail.com', '9876543217',
  4   TO_DATE('10-10-2020','DD-MM-YYYY'),
  5   TO_DATE('14-06-1994','DD-MM-YYYY'),
  6   'Permanent', 4.3);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (109, 'Sanjay Kumar', 'M', 'Finance', 'Financial Analyst',
  3   61000, 6000, 4.5, 'Ahmedabad',  'sanjay.kumar@gmail.com', '9876543218',
  4   TO_DATE('22-01-2022','DD-MM-YYYY'),
  5   TO_DATE('09-12-1997','DD-MM-YYYY'),
  6   'Contract', 3.6);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (110, 'Sneha Verma', 'F', 'IT', 'UI Designer',
  3   59000, 3500, 3.0, 'Mumbai',  'sneha.verma@gmail.com', '9876543219',
  4   TO_DATE('15-04-2024','DD-MM-YYYY'),
  5   TO_DATE('17-05-2000','DD-MM-YYYY'),
  6   'Intern', 4.0);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (111, 'Mohit Agarwal', 'M', 'Sales', 'Sales Executive',
  3   45000, 5000, 1.5, 'Ahmedabad',  'mohit.agarwal@gmail.com', '9876543220',
  4   TO_DATE('08-09-2024','DD-MM-YYYY'),
  5   TO_DATE('11-02-2001','DD-MM-YYYY'),
  6   'Contract', 3.4);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (112, 'Anjali Rao', 'F', 'Finance', 'Finance Manager',
  3   88000, 12000, 10.0, 'Bengaluru',  'anjali.rao@gmail.com', '9876543221',
  4   TO_DATE('16-12-2016','DD-MM-YYYY'),
  5   TO_DATE('28-10-1989','DD-MM-YYYY'),
  6   'Permanent', 4.9);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (113, 'Vivek Singh', 'M', 'IT', 'Software Tester',
  3   57000, 4000, 4.0, 'Pune',  'vivek.singh@gmail.com', '9876543222',
  4   TO_DATE('11-05-2021','DD-MM-YYYY'),
  5   TO_DATE('07-06-1996','DD-MM-YYYY'),
  6   'Permanent', 3.7);

1 row created.

SQL>
SQL> INSERT INTO Employee
  2  VALUES (114, 'Kavita Shah', 'F', 'HR', 'Recruiter',
  3   51000, NULL, 4.5, 'Surat',  'kavita.shah@gmail.com', '9876543223',
  4   TO_DATE('19-09-2022','DD-MM-YYYY'),
  5   TO_DATE('15-02-1997','DD-MM-YYYY'),
  6   'Contract', 4.0);

1 row created.

SQL>
SQL> INSERT INTO Employee VALUES
  2  (115, 'Arjun Desai', 'M', 'IT', 'DevOps Engineer',
  3   78000, 9000, 5.5, 'Ahmedabad',  'arjun.desai@gmail.com', '9876543224',
  4   TO_DATE('03-01-2023','DD-MM-YYYY'),
  5   TO_DATE('21-12-1995','DD-MM-YYYY'), 'Permanent', 4.4);

1 row created.

SQL> COMMIT;

Commit complete.

-- Questions
-- Q1. Display each employee's name in uppercase along with their department and salary.
Select upper(emp_name),department, salary from employee;

UPPER(EMP_NAME)      DEPARTMENT     SALARY
-------------------- ---------- ----------
RAHUL PATEL          IT              65000
NEHA SHAH            HR              48000
AMIT MEHTA           Sales           42000
PRIYA DESAI          IT              95000
KARAN JOSHI          Finance         55000
RIYA MEHTA           HR              72000
JAY SHAH             IT              82000
POOJA PATEL          Sales           68000
SANJAY KUMAR         Finance         61000
SNEHA VERMA          IT              59000
MOHIT AGARWAL        Sales           45000

UPPER(EMP_NAME)      DEPARTMENT     SALARY
-------------------- ---------- ----------
ANJALI RAO           Finance         88000
VIVEK SINGH          IT              57000
KAVITA SHAH          HR              51000
ARJUN DESAI          IT              78000

15 rows selected.
-- Q2. Display employee name and the number of characters present in each employee's name. Arrange the result from longest name to shortest name.
select emp_name, length(emp_name) from employee order by length(emp_name) desc;

EMP_NAME             LENGTH(EMP_NAME)
-------------------- ----------------
Mohit Agarwal                      13
Sanjay Kumar                       12
Karan Joshi                        11
Priya Desai                        11
Rahul Patel                        11
Pooja Patel                        11
Kavita Shah                        11
Vivek Singh                        11
Sneha Verma                        11
Arjun Desai                        11
Anjali Rao                         10

EMP_NAME             LENGTH(EMP_NAME)
-------------------- ----------------
Amit Mehta                         10
Riya Mehta                         10
Neha Shah                           9
Jay Shah                            8

15 rows selected.
-- Q3. Display employee name, salary and salary after adding a 10% increment. Display the calculated salary rounded to the nearest whole number.
select emp_name, salary,salary + salary * 0.10 from employee;

EMP_NAME                 SALARY SALARY+SALARY*0.10
-------------------- ---------- ------------------
Rahul Patel               65000              71500
Neha Shah                 48000              52800
Amit Mehta                42000              46200
Priya Desai               95000             104500
Karan Joshi               55000              60500
Riya Mehta                72000              79200
Jay Shah                  82000              90200
Pooja Patel               68000              74800
Sanjay Kumar              61000              67100
Sneha Verma               59000              64900
Mohit Agarwal             45000              49500

EMP_NAME                 SALARY SALARY+SALARY*0.10
-------------------- ---------- ------------------
Anjali Rao                88000              96800
Vivek Singh               57000              62700
Kavita Shah               51000              56100
Arjun Desai               78000              85800

15 rows selected.
-- Q4. Display employee name, salary and bonus. For employees who have a bonus, display the total amount they receive as salary plus bonus.
Select emp_name,salary, salary,bonus ,salary+bonus from employee;

EMP_NAME                 SALARY     SALARY      BONUS SALARY+BONUS
-------------------- ---------- ---------- ---------- ------------
Rahul Patel               65000      65000       5000        70000
Neha Shah                 48000      48000       3000        51000
Amit Mehta                42000      42000       7000        49000
Priya Desai               95000      95000      15000       110000
Karan Joshi               55000      55000       4500        59500
Riya Mehta                72000      72000       8000        80000
Jay Shah                  82000      82000
Pooja Patel               68000      68000      10000        78000
Sanjay Kumar              61000      61000       6000        67000
Sneha Verma               59000      59000       3500        62500
Mohit Agarwal             45000      45000       5000        50000

EMP_NAME                 SALARY     SALARY      BONUS SALARY+BONUS
-------------------- ---------- ---------- ---------- ------------
Anjali Rao                88000      88000      12000       100000
Vivek Singh               57000      57000       4000        61000
Kavita Shah               51000      51000
Arjun Desai               78000      78000       9000        87000

15 rows selected.
-- Q5. Display the employee name and the year in which the employee joined the organization.
Select emp_name, extract(year from joining_date) from employee;

EMP_NAME             EXTRACT(YEARFROMJOINING_DATE)
-------------------- -----------------------------
Rahul Patel                                   2022
Neha Shah                                     2020
Amit Mehta                                    2023
Priya Desai                                   2018
Karan Joshi                                   2021
Riya Mehta                                    2017
Jay Shah                                      2019
Pooja Patel                                   2020
Sanjay Kumar                                  2022
Sneha Verma                                   2024
Mohit Agarwal                                 2024

EMP_NAME             EXTRACT(YEARFROMJOINING_DATE)
-------------------- -----------------------------
Anjali Rao                                    2016
Vivek Singh                                   2021
Kavita Shah                                   2022
Arjun Desai                                   2023

15 rows selected.
-- Q6. Display employees whose salary is between ₹50,000 and ₹80,000. Display their name, salary and experience, and arrange them by salary from highest to lowest.
select emp_name,salary,experience from employee where salary between 50000 and 80000 order by salary desc;

EMP_NAME                 SALARY EXPERIENCE
-------------------- ---------- ----------
Arjun Desai               78000        5.5
Riya Mehta                72000          9
Pooja Patel               68000          7
Rahul Patel               65000        3.5
Sanjay Kumar              61000        4.5
Sneha Verma               59000          3
Vivek Singh               57000          4
Karan Joshi               55000        6.5
Kavita Shah               51000        4.5

9 rows selected.
-- Q7. Display the first five characters of every employee's name along with the employee's designation.
 select substr(emp_name,1,5) as first_five_character,designation from employee;
 
FIRST_FIVE_CHARACTER DESIGNATION
-------------------- --------------------
Rahul                Software Developer
Neha                 HR Executive
Amit                 Sales Executive
Priya                Project Manager
Karan                Accountant
Riya                 HR Manager
Jay S                Senior Developer
Pooja                Sales Manager
Sanja                Financial Analyst
Sneha                UI Designer
Mohit                Sales Executive

FIRST_FIVE_CHARACTER DESIGNATION
-------------------- --------------------
Anjal                Finance Manager
Vivek                Software Tester
Kavit                Recruiter
Arjun                DevOps Engineer

15 rows selected.
-- Q8. Display the employee name and joining date, along with the date obtained after adding six months to their joining date.
select emp_name,joining_date,add_months(joining_date,6)as date_after_6_months from employee;

EMP_NAME             JOINING_D DATE_AFTE
-------------------- --------- ---------
Rahul Patel          15-JUN-22 15-DEC-22
Neha Shah            10-MAR-20 10-SEP-20
Amit Mehta           20-JUL-23 20-JAN-24
Priya Desai          05-FEB-18 05-AUG-18
Karan Joshi          12-NOV-21 12-MAY-22
Riya Mehta           18-JUN-17 18-DEC-17
Jay Shah             25-AUG-19 25-FEB-20
Pooja Patel          10-OCT-20 10-APR-21
Sanjay Kumar         22-JAN-22 22-JUL-22
Sneha Verma          15-APR-24 15-OCT-24
Mohit Agarwal        08-SEP-24 08-MAR-25

EMP_NAME             JOINING_D DATE_AFTE
-------------------- --------- ---------
Anjali Rao           16-DEC-16 16-JUN-17
Vivek Singh          11-MAY-21 11-NOV-21
Kavita Shah          19-SEP-22 19-MAR-23
Arjun Desai          03-JAN-23 03-JUL-23

15 rows selected.
-- Q9. Display the name, salary and performance rating of employees whose rating is greater than 4.0. Arrange the result by rating in descending order and salary in descending order.
 select emp_name,salary,performance_rating from employee where performance_rating > 4.0 order by performance_rating desc, salary desc;
 
EMP_NAME                 SALARY PERFORMANCE_RATING
-------------------- ---------- ------------------
Anjali Rao                88000                4.9
Priya Desai               95000                4.8
Riya Mehta                72000                4.7
Neha Shah                 48000                4.5
Arjun Desai               78000                4.4
Pooja Patel               68000                4.3
Rahul Patel               65000                4.2
Jay Shah                  82000                4.1

8 rows selected.
-- Q10. Display each employee's name and the number of years/months that have approximately elapsed since they joined the organization.
