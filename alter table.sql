-- EMP1 TABLE
-- This table stores basic employee information.
-- Important concepts: CREATE TABLE, column names, datatypes,
-- NUMBER, VARCHAR2, CHAR, DATE.
CREATE TABLE emp1
(
    Emp_ID       NUMBER(5) ,
    Emp_Name     VARCHAR2(40),
    Gender       CHAR(1),
    Salary       NUMBER(10,2),
    Department   VARCHAR2(30),
    City         VARCHAR2(30),
    Email        VARCHAR2(50),
    Joining_Date DATE
);

SQL> desc emp1;
 Name                                                  Null?    Type
 ----------------------------------------------------- -------- ------------------------------------
 EMP_ID                                                         NUMBER(5)
 EMP_NAME                                                       VARCHAR2(40)
 GENDER                                                         CHAR(1)
 SALARY                                                         NUMBER(10,2)
 DEPARTMENT                                                     VARCHAR2(30)
 CITY                                                           VARCHAR2(30)
 EMAIL                                                          VARCHAR2(50)
 JOINING_DATE                                                   DATE

SQL> select * from emp1;

    EMP_ID EMP_NAME                                 G     SALARY DEPARTMENT
---------- ---------------------------------------- - ---------- ------------------------------
CITY                           EMAIL                                              JOINING_D
------------------------------ -------------------------------------------------- ---------
       101 Rahul Patel                              M      45000 IT
Ahmedabad                      rahul@gmail.com                                    10-JAN-24

       102 Neha Shah                                F      52000 HR
Surat                          neha@gmail.com                                     15-MAR-23

       103 Amit Mehta                               M      38000 Sales
Vadodara                       amit@gmail.com                                     20-JUL-24

       104 Priya Desai                              F      60000 IT
Ahmedabad                      priya@gmail.com                                    05-FEB-22

       105 Karan Joshi                              M      42000 Finance
Rajkot                         karan@gmail.com                                    12-NOV-23

       106 Riya Mehta                               F      48000 HR
Ahmedabad                      riya@gmail.com                                     18-JUN-24

       107 Jay Shah                                 M      55000 IT
Surat                          jay@gmail.com                                      25-AUG-22

       108 Pooja Patel                              F      47000 Sales
Vadodara                       pooja@gmail.com                                    10-OCT-23

-> Alter Table Practice Exercise:


•Add a new column Mobile_No:

SQL> alter table emp1 add mobile_no number(10);

•Add a column Address that can store up to 100 characters

SQL> alter table emp1 add address varchar2(100);

•Add two columns Qualification and Experience, with the constrain Not Null

SQL> alter table emp1 add (qualification varchar2(5), experience number(2));

SQL> insert into emp (QUALIFICATION, EXPERIENCE)values('&qualification', &experience);

•Increase the size of the Emp_Name column so that it can store up to 60 characters.

SQL> ALTER TABLE emp1 MODIFY Emp_Name VARCHAR2(60);

•Change the datatype of Experience so that it can store decimal values such as 2.5

SQL> ALTER TABLE emp1 MODIFY Experience NUMBER(3,1);

•Add a new column Status with datatype VARCHAR2(20) and set its default value to 'Active'.	

SQL> ALTER TABLE emp1 ADD Status VARCHAR2(20) DEFAULT 'Active';

•Add a new column Country with datatype VARCHAR2(30) and set its default value to 'India'.

SQL> ALTER TABLE emp1 ADD Country VARCHAR2(30) DEFAULT 'India';

•Make the Department column NOT NULL.

SQL> Alter table emp1 modify department not null;

•Remove the NOT NULL restriction from the Department column.

SQL> ALTER TABLE emp1 MODIFY Department NULL;

•Rename the column Emp_Name to Employee_Name.

SQL> ALTER TABLE emp1 RENAME COLUMN Emp_Name TO Employee_Name;

•Add a UNIQUE constraint on the Email column.

SQL> ALTER TABLE emp1 ADD CONSTRAINT emp_email_unique UNIQUE (Email);

•Add a CHECK constraint so that salary must always be greater than 0.

SQL> ALTER TABLE emp1 ADD CONSTRAINT emp_salary_check CHECK (Salary > 0);
