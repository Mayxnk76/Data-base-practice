-- DEPT table
create table dept(
  deptno number(2,0),
  dname  varchar2(14),
  loc    varchar2(13),
  constraint pk_dept primary key (deptno)
);
SQL> desc dept;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  DEPTNO                                    NOT NULL NUMBER(2)
--  DNAME                                              VARCHAR2(14)
--  LOC                                                VARCHAR2(13)

-- insert Queries of dept
insert into dept
values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept
values(20, 'RESEARCH', 'DALLAS');
insert into dept
values(30, 'SALES', 'CHICAGO');
insert into dept
values(40, 'OPERATIONS', 'BOSTON');

-- EMP data table
create table emp(
  empno    number(4,0),
  ename    varchar2(10),
  job      varchar2(9),
  mgr      number(4,0),
  hiredate date,
  sal      number(7,2),
  comm     number(7,2),
  deptno   number(2,0),
  constraint pk_emp primary key (empno),
  constraint fk_deptno foreign key (deptno) references dept (deptno)
);

SQL> desc emp;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  EMPNO                                     NOT NULL NUMBER(4)
--  ENAME                                              VARCHAR2(10)
--  JOB                                                VARCHAR2(9)
--  MGR                                                NUMBER(4)
--  HIREDATE                                           DATE
--  SAL                                                NUMBER(7,2)
--  COMM                                               NUMBER(7,2)
--  DEPTNO                                             NUMBER(2)
--  MOBILE_NO                                          NUMBER(10)
--  ADDRESS                                            VARCHAR2(100)
--  QUALIFICATION                                      VARCHAR2(5)
--  EXPERIENCE                                         NUMBER(2)

-- Insert queries of emp
insert into emp
values(
 7839, 'KING', 'PRESIDENT', null,
 to_date('17-11-1981','dd-mm-yyyy'),
 5000, null, 10
);
insert into emp
values(
 7698, 'BLAKE', 'MANAGER', 7839,
 to_date('1-5-1981','dd-mm-yyyy'),
 2850, null, 30
);
insert into emp
values(
 7782, 'CLARK', 'MANAGER', 7839,
 to_date('9-6-1981','dd-mm-yyyy'),
 2450, null, 10
);
insert into emp
values(
 7566, 'JONES', 'MANAGER', 7839,
 to_date('2-4-1981','dd-mm-yyyy'),
 2975, null, 20
);
insert into emp
values(
 7788, 'SCOTT', 'ANALYST', 7566,
 to_date('13-JUL-87','dd-mm-rr') - 85,
 3000, null, 20
);
insert into emp
values(
 7902, 'FORD', 'ANALYST', 7566,
 to_date('3-12-1981','dd-mm-yyyy'),
 3000, null, 20
);
insert into emp
values(
 7369, 'SMITH', 'CLERK', 7902,
 to_date('17-12-1980','dd-mm-yyyy'),
 800, null, 20
);
insert into emp
values(
 7499, 'ALLEN', 'SALESMAN', 7698,
 to_date('20-2-1981','dd-mm-yyyy'),
 1600, 300, 30
);
insert into emp
values(
 7521, 'WARD', 'SALESMAN', 7698,
 to_date('22-2-1981','dd-mm-yyyy'),
 1250, 500, 30
);
insert into emp
values(
 7654, 'MARTIN', 'SALESMAN', 7698,
 to_date('28-9-1981','dd-mm-yyyy'),
 1250, 1400, 30
);
insert into emp
values(
 7844, 'TURNER', 'SALESMAN', 7698,
 to_date('8-9-1981','dd-mm-yyyy'),
 1500, 0, 30
);
insert into emp
values(
 7876, 'ADAMS', 'CLERK', 7788,
 to_date('13-JUL-87', 'dd-mm-rr') - 51,
 1100, null, 20
);
insert into emp
values(
 7900, 'JAMES', 'CLERK', 7698,
 to_date('3-12-1981','dd-mm-yyyy'),
 950, null, 30
);
insert into emp
values(
 7934, 'MILLER', 'CLERK', 7782,
 to_date('23-1-1982','dd-mm-yyyy'),
 1300, null, 10
);
-- select queries--
-- 1. Display the structure of an EMP table 
    SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)
 MOBILE_NO                                          NUMBER(10)
 ADDRESS                                            VARCHAR2(100)
 QUALIFICATION                                      VARCHAR2(5)
 EXPERIENCE                                         NUMBER(2)
-- 2. Display the structure of DEPT table 
  SQL> desc dept;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTNO                                    NOT NULL NUMBER(2)
 DNAME                                              VARCHAR2(14)
 LOC                                                VARCHAR2(13)

-- 3. Display all the records of EMP table
    
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS              QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- -------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
--  4. Display all the records of DEPT table 
    
SQL> select * from dept;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO
        40 OPERATIONS     BOSTON
-- 5. Display only Name of all employees
    SQL> select ename from emp;

ENAME
----------
KING
BLAKE
CLARK
JONES
SCOTT
FORD
SMITH
ALLEN
WARD
MARTIN
TURNER
ADAMS
JAMES
MILLER
-- 6. Display Employee’s Name and salary
    
SQL> select ename,sal from emp;

ENAME             SAL
---------- ----------
KING             5000
BLAKE            2850
CLARK            2450
JONES            2975
SCOTT            3000
FORD             3000
SMITH             800
ALLEN            1600
WARD             1250
MARTIN           1250
TURNER           1500
ADAMS            1100
JAMES             950
MILLER           1300
-- 7. Display only unique departments (deptno) from EMP table 
    SQL> select distinct deptno from emp;
-- 8. Display employees whose name starts with ‘J’ 
    SQL> select * from emp where ename like 'J%';
-- 9. Display all the employees’ Date of Joining (HireDate) and Salary (Sal)  
    SQL> select hiredate,sal from emp;
-- 10. Display all clerks (job), from EMP table 
    SQL> select * from emp where job = 'CLERK';
-- 11. Display all employees’ name and salary whose salary is more than 2000 
    SQL> SELECT * FROM EMP WHERE SAL > 2000;
-- 12. Display all employees who are not in department number (deptno) 30 
    SQL> SELECT * FROM EMP WHERE DEPTNO != 30;
-- 13. Display employees with their empno, ename and mgr (i.e manager’s no) 
    SQL> select empno,ename,mgr from emp;
-- 14. Display manager’s number, job profile, department number and salary of employees Allen, Adams, Jones and Blake. 
    SQL> select mgr,job,deptno,sal from emp where ename in('ALLEN','ADAMS','JONES','BLAKE');
-- 15. Display only unique Salary (sal) from EMP table 
    SQL> select distinct sal from emp;
-- 16. Display the location of department number 30
    SQL> select loc from dept where deptno = 30;
    
     LOC
     -------------
     CHICAGO
-- 17. Display the details of the department located in ‘New York’ city 
     SQL> select * from dept where loc = 'NEW YORK';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
-- 18. Display all the employees according to their names in sorted order
    
SQL> set linesize 400;
SQL> /

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
   
-- 19. Display all the employees who are not salesman nor the manager 

SQL> set linesize 400;
SQL> /

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

7 rows selected.
-- 20. Display the details of a clerk who is getting salary more than 1000
SQL> select * from emp where job = 'CLERK' and sal > 1000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                     QUALI EXPERIENCE
-------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ----------------------------------------------------------------------------------------------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100               20
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10
-- 21. Display all the employees whose name starts with any alphabet between B and K 

SQL> set linesize 500;
     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
-- 22. Display all employees whose name does not contain the character ‘S’

SQL> select * from emp where ename not like '%S%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                     QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000               10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850               30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450               10
      7902 FORD       ANALYST         7566 03-DEC-81       3000               20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10

-- 23. Display all the employees whose salary is between 1000 and 2000 but not exact 1500 

SQL> select * from emp where sal between 1000 and 2000 and sal <> 1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                     QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300    30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100               20
      7934 MILLER     CLERK           7782 23-JAN-82       1300               10

-- 24. Select all the employees who are hired in the year 1981 (year 81) 2
SQL> SELECT * FROM EMP WHERE HIREDATE >= TO_DATE('01-01-1981', 'DD-MM-YYYY') AND HIREDATE < TO_DATE('01-01-1982', 'DD-MM-YYYY');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
-- 25. Display all the employees who are hired in February (FEB) month 

SQL> SELECT * FROM EMP WHERE EXTRACT(MONTH FROM HIREDATE) = 2;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
-- 26. Display all the employees according to their seniority of joining 
SQL> SELECT * FROM EMP ORDER BY HIREDATE ASC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
-- 27. Display the employees who are either ‘Analyst’, ‘President’ or ‘Manager’ 

SQL> SELECT * FROM EMP WHERE JOB IN ('ANALYST', 'PRESIDENT', 'MANAGER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
-- 28. Display all the Salesman joined in month of September and getting salary more than or equal to 1500

SQL>  SELECT * FROM EMP WHERE JOB = 'SALESMAN' AND EXTRACT(MONTH FROM HIREDATE) = 9 AND SAL >= 1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
-- 29. Display the job type of an employee of department number 30 and getting salary more than 1500 
SQL> SELECT JOB FROM EMP WHERE DEPTNO = 30 AND SAL > 1500;

JOB
---------
MANAGER
SALESMAN
-- 30. Display the unique job titles of employees in department number 20 

SQL> SELECT DISTINCT JOB FROM EMP WHERE DEPTNO = 20;

JOB
---------
MANAGER
ANALYST
CLERK
-- 31. Display all the employees in a sorted order to their salary highest to lowest, hiredate latest to oldest. 

SQL> SELECT * FROM EMP ORDER BY SAL DESC,HIREDATE DESC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
-- 32. Display all the employees in a sorted order of their job title and salary. 

SQL> SELECT * FROM EMP ORDER BY JOB ASC,SAL ASC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
-- 33. Display employees in a sorted order of their salary who are clerk. 

SQL> SELECT * FROM EMP WHERE JOB = 'CLERK' ORDER BY SAL ASC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
-- 34. Display all the managers according to their salary highest to lowest  

SQL> SELECT * FROM EMP WHERE JOB = 'MANAGER' ORDER BY SAL DESC;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
-- 35. Display all the employees who have joined either on 3rd or 23rd date of any month in any year.
SQL> SELECT * FROM EMP WHERE EXTRACT(DAY FROM HIREDATE) IN (3, 23);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO  MOBILE_NO ADDRESS                                                         QUALI EXPERIENCE
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- ---------------------------------------------------------------------------------------------------- ----- ----------
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10



