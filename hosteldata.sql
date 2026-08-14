create table hostel
(
  sid number(2) primary key,
  stud_name varchar(25) not null,
  gender char(1) check (gender in ('M','m','F','f','T','t')),
  b_date date,
  contact number(10) check(length(contact)=10),
  city varchar(20) default 'Bhavnagar'
);

-- desc hostel;

--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  SID                                       NOT NULL NUMBER(2)
--  STUD_NAME                                 NOT NULL VARCHAR2(25)
--  GENDER                                             CHAR(1)
--  B_DATE                                             DATE
--  CONTACT                                            NUMBER(10)
--  CITY                                               VARCHAR2(20)

-- insert the quaries.

insert into hostel values('&sid','&stud_name','&gender','&b_date','&contact','&city');

select*from hostel;

--    SID STUD_NAME                 G B_DATE       CONTACT CITY
-- ------ ------------------------- - --------- ---------- --------------------
--      1 mayank                    M 06-MAY-06 8511192325 Bhavnagar
--      2 manav                     M 09-APR-06 9104045226 Bhavnagar
--      3 nitin                     M 09-APR-06 8787989800
--      4 manshi                    F 12-MAY-06 7687995545 Bhavnagar
--      5 mayuri                    F 06-JUN-06 8798098777 Bhavnagar

