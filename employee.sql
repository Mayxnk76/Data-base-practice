-- 1. Display the structure of an EMP table 
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

-- SQL> desc emp;
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

-- 2. Display the structure of DEPT table 
create table dept(
  deptno number(2,0),
  dname  varchar2(14),
  loc    varchar2(13),
  constraint pk_dept primary key (deptno)
);

-- SQL> desc dept;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  DEPTNO                                    NOT NULL NUMBER(2)
--  DNAME                                              VARCHAR2(14)
--  LOC                                                VARCHAR2(13)

-- 3. Display all the records of EMP table

SQL> select * from emp;

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7839 KING       PRESIDENT            17-NOV-81       5000                    10
--       7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
--       7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
--       7566 JONES      MANAGER         7839 02-APR-81       2975                    20
--       7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
--       7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
--       7369 SMITH      CLERK           7902 17-DEC-80        800                    20
--       7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
--       7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
--       7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
--       7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

--      EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
-- ---------- ---------- --------- ---------- --------- ---------- ---------- ----------
--       7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
--       7900 JAMES      CLERK           7698 03-DEC-81        950                    30
--       7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

 -- 4. Display all the records of DEPT table 

SQL> select * from dept;

--     DEPTNO DNAME          LOC
-- ---------- -------------- -------------
--         10 ACCOUNTING     NEW YORK
--         20 RESEARCH       DALLAS
--         30 SALES          CHICAGO
--         40 OPERATIONS     BOSTON

-- 5. Display only Name of all employees 

SQL> select ename from emp;

-- ENAME
-- ----------
-- KING
-- BLAKE
-- CLARK
-- JONES
-- SCOTT
-- FORD
-- SMITH
-- ALLEN
-- WARD
-- MARTIN
-- TURNER

-- ENAME
-- ----------
-- ADAMS
-- JAMES
-- MILLER

-- 6. Display Employee’s Name and salary 
SQL> select ename,sal from emp;

-- ENAME             SAL
-- ---------- ----------
-- KING             5000
-- BLAKE            2850
-- CLARK            2450
-- JONES            2975
-- SCOTT            3000
-- FORD             3000
-- SMITH             800
-- ALLEN            1600
-- WARD             1250
-- MARTIN           1250
-- TURNER           1500

-- ENAME             SAL
-- ---------- ----------
-- ADAMS            1100
-- JAMES             950
-- MILLER           1300
