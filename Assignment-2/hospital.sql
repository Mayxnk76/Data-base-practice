----Hospptal---
CREATE TABLE Patient (
    Patient_ID     INT PRIMARY KEY,
    Name           VARCHAR(50),
    Age            INT,
    Gender         VARCHAR(10),
    Phone_Number   VARCHAR(15),
    Address        VARCHAR(100)
);

CREATE TABLE Doctor (
    Doctor_ID          INT PRIMARY KEY,
    Name                VARCHAR(50),
    Specialization      VARCHAR(50),
    Department          VARCHAR(50),
    Consultation_Fee    DECIMAL(8,2)
);

CREATE TABLE Appointment (
    Appointment_ID   INT PRIMARY KEY,
    Patient_ID       INT,
    Doctor_ID        INT,
    Appointment_Date DATE,
    Visit_Time       VARCHAR,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

INSERT INTO Doctor (Doctor_ID, Name, Specialization, Department, Consultation_Fee) VALUES
(1, 'Dr. Mehta',  'Cardiologist',      'Cardiology',        800.00);
INSERT INTO Doctor (Doctor_ID, Name, Specialization, Department, Consultation_Fee) VALUES
(2, 'Dr. Kapoor',  'Orthopedic',       'Orthopedics',       600.00);
INSERT INTO Doctor (Doctor_ID, Name, Specialization, Department, Consultation_Fee) VALUES
(3, 'Dr. Nair',    'Dermatologist',    'Dermatology',       500.00);
INSERT INTO Doctor (Doctor_ID, Name, Specialization, Department, Consultation_Fee) VALUES
(4, 'Dr. Singh',   'General Physician','General Medicine',  400.00);
INSERT INTO Doctor (Doctor_ID, Name, Specialization, Department, Consultation_Fee) VALUES
(5, 'Dr. Iyer',    'Pediatrician',     'Pediatrics',        550.00);


INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(1,  'Anita Verma',    34, 'Female', '9876543210', 'Satellite, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(2,  'Rahul Sharma',   45, 'Male',   '9823456712', 'Navrangpura, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(3,  'Priya Patel',    28, 'Female', '9812345678', 'Bopal, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(4,  'Ankit Joshi',    62, 'Male',   '9898765432', 'Maninagar, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(5,  'Sneha Mehta',    50, 'Female', '9765432189', 'Vastrapur, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(6,  'Vikram Rao',     70, 'Male',   '9723456781', 'Paldi, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(7,  'Kavita Desai',   55, 'Female', '9812309876', 'Chandkheda, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(8,  'Manoj Trivedi',  65, 'Male',   '9834567890', 'Naranpura, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(9,  'Neha Shah',      22, 'Female', '9845123098', 'Thaltej, Ahmedabad');
INSERT INTO Patient (Patient_ID, Name, Age, Gender, Phone_Number, Address) VALUES
(10, 'Suresh Iyer',    38, 'Male',   '9856234109', 'Vastral, Ahmedabad');


INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(1,  1,  1, to_date('2026-06-29','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(2,  2,  1, to_date('2026-06-30','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(3,  3,  1, to_date('2026-07-01','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(4,  4,  2, to_date('2026-06-29','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(5,  5,  2, to_date('2026-06-30','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(6,  1,  2, to_date('2026-07-01','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(7,  6,  2, to_date('2026-07-02','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(8,  7,  3, to_date('2026-06-29','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(9,  8,  3, to_date('2026-06-30','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(10, 9,  3, to_date('2026-07-03','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(11, 10, 4, to_date('2026-06-29','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(12, 2,  4, to_date('2026-07-01','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(13, 3,  4, to_date('2026-07-02','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(14, 4,  4, to_date('2026-07-03','yyyy-mm-dd'));
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, Appointment_Date) VALUES
(15, 5,  4, to_date('2026-07-04','yyyy-mm-dd'));

-- 1.	Display the names, gender and age of all female patients whose age is between 25 and 60. Arrange the result from oldest to youngest.
SELECT Name, Gender, Age FROM Patient WHERE Gender = 'Female' AND Age BETWEEN 25 AND 60 ORDER BY Age DESC;

NAME           GENDER   AGE
-------------  -------  ---
Sneha Mehta    Female    50
Kavita Desai   Female    55
Anita Verma    Female    34
Priya Patel    Female    28 
-- 2.	Display patients whose name starts with A, P or S.
SELECT * FROM Patient WHERE Name LIKE 'A%' OR Name LIKE 'P%' OR Name LIKE 'S%';

PATIENT_ID  NAME          AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  ------------  ---  ------  -------------  ------------------------
1           Anita Verma   34   Female  9876543210     Satellite, Ahmedabad
3           Priya Patel   28   Female  9812345678     Bopal, Ahmedabad
4           Ankit Joshi   62   Male    9898765432     Maninagar, Ahmedabad
5           Sneha Mehta   50   Female  9765432189     Vastrapur, Ahmedabad
10          Suresh Iyer   38   Male    9856234109     Vastral, Ahmedabad
-- 3.	Display patients whose name contains the letter a and whose age is greater than 40. 
SELECT * FROM Patient WHERE LOWER(Name) LIKE '%a%' AND Age > 40;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  -------------  ------------------------
2           Rahul Sharma   45   Male    9823456712     Navrangpura, Ahmedabad
5           Sneha Mehta    50   Female  9765432189     Vastrapur, Ahmedabad
6           Vikram Rao     70   Male    9723456781     Paldi, Ahmedabad
7           Kavita Desai   55   Female  9812309876     Chandkheda, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890     Naranpura, Ahmedabad
-- 4.	Display the names of patients who live in either Bopal, Satellite or Vastrapur.
SELECT Name FROM Patient WHERE Address LIKE 'Bopal%' OR Address LIKE 'Satellite%' OR Address LIKE 'Vastrapur%';

NAME
-------------
Anita Verma
Priya Patel
Sneha Mehta
-- 5.	Display patients whose age is not between 30 and 60. Arrange them from youngest to oldest.
SELECT * FROM Patient WHERE Age NOT BETWEEN 30 AND 60 ORDER BY Age ASC;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  -------------  ------------------------
9           Neha Shah      22   Female  9845123098     Thaltej, Ahmedabad
3           Priya Patel    28   Female  9812345678     Bopal, Ahmedabad
4           Ankit Joshi    62   Male    9898765432     Maninagar, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890     Naranpura, Ahmedabad
6           Vikram Rao     70   Male    9723456781     Paldi, Ahmedabad

-- 6.	Display each patient's name along with the number of characters in their name. 
SELECT Name, LENGTH(Name) AS Number_Of_Characters FROM Patient;

NAME           NUMBER_OF_CHARACTERS
-------------  --------------------
Anita Verma             11
Rahul Sharma            12
Priya Patel             11
Ankit Joshi             10
Sneha Mehta             11
Vikram Rao              10
Kavita Desai            12
Manoj Trivedi           13
Neha Shah                9
Suresh Iyer             11

-- 7.	Display each patient's name in uppercase and their address in lowercase. 
SELECT UPPER(Name) AS Name, LOWER(Address) AS Address FROM Patient;

NAME           ADDRESS
-------------  ------------------------
ANITA VERMA    satellite, ahmedabad
RAHUL SHARMA   navrangpura, ahmedabad
PRIYA PATEL    bopal, ahmedabad
ANKIT JOSHI    maninagar, ahmedabad
SNEHA MEHTA    vastrapur, ahmedabad
VIKRAM RAO     paldi, ahmedabad
KAVITA DESAI   chandkheda, ahmedabad
MANOJ TRIVEDI  naranpura, ahmedabad
NEHA SHAH      thaltej, ahmedabad
SURESH IYER    vastral, ahmedabad

-- 8.	Display the first five characters of each patient's name and arrange the result alphabetically. 
SELECT SUBSTR(Name, 1, 5) AS First_Five_Characters FROM Patient ORDER BY First_Five_Characters ASC;

FIRST_FIVE_CHARACTERS
---------------------
Anita
Ankit
Kavit
Manoj
Neha 
Priya
Rahul
Sneha
Sures
Vikram
-- 9.	Display the position of the character a in each patient's name. 
SELECT Name, INSTR(LOWER(Name), 'a') AS Position_Of_A FROM Patient;

NAME           POSITION_OF_A
-------------  -------------
Anita                 1
Rahul                 2
Priya                 5
Ankit                 1
Sneha                 5
Vikram                3
Kavita                2
Manoj                 2
Neha                  3
Suresh                5
-- 10.	Display each doctor's name, specialization and consultation fee after increasing the fee by 10%, rounded to two decimal places. 
SELECT Name, Specialization, ROUND(Consultation_Fee * 1.10, 2) AS Increased_Fee FROM Doctor;

NAME         SPECIALIZATION       INCREASED_FEE
-----------  -------------------  -------------
Dr. Mehta    Cardiologist             880.00
Dr. Kapoor   Orthopedic               660.00
Dr. Nair     Dermatologist            550.00
Dr. Singh    General Physician        440.00
Dr. Iyer     Pediatrician             605.00
-- 11.	Display doctors whose consultation fee is between 500 and 800, excluding the Dermatologist. 
SELECT * FROM Doctor WHERE Consultation_Fee BETWEEN 500 AND 800 AND Specialization <> 'Dermatologist';

DOCTOR_ID  NAME         SPECIALIZATION  DEPARTMENT    CONSULTATION_FEE
---------  -----------  --------------  ------------  ----------------
1          Dr. Mehta    Cardiologist    Cardiology          800.00
2          Dr. Kapoor   Orthopedic       Orthopedics        600.00
5          Dr. Iyer     Pediatrician     Pediatrics         550.00
-- 12.	Display the highest, lowest and average consultation fee of all doctors. 
SELECT MAX(Consultation_Fee) AS Highest_Fee, MIN(Consultation_Fee) AS Lowest_Fee, ROUND(AVG(Consultation_Fee), 2) AS Average_Fee FROM Doctor;
HIGHEST_FEE  LOWEST_FEE  AVERAGE_FEE
-----------  ----------  -----------
800.00       400.00      570.00

-- 13.	Display the total number of patients and the average age of all patients. 
SELECT COUNT(*) AS Total_Patients, ROUND(AVG(Age), 2) AS Average_Age FROM Patient;
TOTAL_PATIENTS  AVERAGE_AGE
--------------  -----------
10              46.90
-- 14.	Display the number of female patients whose age is greater than 40. 
SELECT COUNT(*) AS Female_Patients FROM Patient WHERE Gender = 'Female' AND Age > 40;
FEMALE_PATIENTS
---------------
2
-- 15.	Display appointment IDs and appointment dates in DD-MM-YYYY format for appointments scheduled after 30-June-2026. 
SELECT Appointment_ID, TO_CHAR(Appointment_Date, 'DD-MM-YYYY') AS Appointment_Date FROM Appointment WHERE Appointment_Date > DATE '2026-06-30';
APPOINTMENT_ID  APPOINTMENT_DATE
--------------  ----------------
3               01-07-2026
6               01-07-2026
7               02-07-2026
10              03-07-2026
12              01-07-2026
13              02-07-2026
14              03-07-2026
15              04-07-2026
-- 16.	Display appointment dates along with the date obtained by adding 7 days to each appointment date. Arrange them chronologically. 
SELECT Appointment_Date, Appointment_Date + 7 AS Date_After_7_Days FROM Appointment ORDER BY Appointment_Date ASC;
APPOINTMENT_DATE  DATE_AFTER_7_DAYS
----------------  -----------------
29-JUN-2026       06-JUL-2026
29-JUN-2026       06-JUL-2026
29-JUN-2026       06-JUL-2026
30-JUN-2026       07-JUL-2026
30-JUN-2026       07-JUL-2026
30-JUN-2026       07-JUL-2026
01-JUL-2026       08-JUL-2026
01-JUL-2026       08-JUL-2026
01-JUL-2026       08-JUL-2026
02-JUL-2026       09-JUL-2026
02-JUL-2026       09-JUL-2026
03-JUL-2026       10-JUL-2026
03-JUL-2026       10-JUL-2026
04-JUL-2026       11-JUL-2026
-- 17.	Increase the consultation fee of all doctors by 10%. 
UPDATE Doctor SET Consultation_Fee = Consultation_Fee * 1.10;

5 rows updated.

Dr. Mehta    880.00
Dr. Kapoor   660.00
Dr. Nair     550.00
Dr. Singh    440.00
Dr. Iyer     605.00
-- 18.	Increase the consultation fee by ₹100 for doctors whose current fee is less than ₹600. 
UPDATE Doctor SET Consultation_Fee = Consultation_Fee + 100 WHERE Consultation_Fee < 600;

2 rows updated.

Dr. Nair     550.00 → 650.00
Dr. Singh    440.00 → 540.00
-- 19.	Change the department of the doctor having Doctor_ID = 3 to Skin & Dermatology. 
UPDATE Doctor SET Department = 'Skin & Dermatology' WHERE Doctor_ID = 3;
1 row updated.
-- 20.	Change the address of the patient named Priya Patel to Bopal, Ahmedabad. 
UPDATE Patient SET Address = 'Bopal, Ahmedabad' WHERE Name = 'Priya Patel';
1 row updated.
-- 21.	Delete the appointment having Appointment_ID = 15. 
DELETE FROM Appointment WHERE Appointment_ID = 15;
1 row deleted.
-- 22.	Delete all appointments scheduled on 03-July-2026. 
DELETE FROM Appointment WHERE TRUNC(Appointment_Date) = DATE '2026-07-03';
2 rows deleted.
Appointment_ID 10
Appointment_ID 14
-- 23.	Delete patients whose age is less than 25. 
DELETE FROM Patient WHERE Age < 25;
1 row deleted.
9  Neha Shah  22
-- 24.	Add a new column Email to the Patient table that can store up to 100 characters. 
ALTER TABLE Patient ADD Email VARCHAR2(100);
Table altered successfully.
-- 25.	Add a column Emergency_Contact to the Patient table that can store a maximum of 15 characters. 
ALTER TABLE Patient ADD Emergency_Contact VARCHAR2(15);
Table altered successfully.
-- 26.	Increase the size of the Specialization column in the Doctor table so that it can store up to 80 characters. 
ALTER TABLE Doctor MODIFY Specialization VARCHAR2(80);
Table altered successfully.
-- 27.	Rename the column Phone_Number of the Patient table to Mobile_Number. 
ALTER TABLE Patient RENAME COLUMN Phone_Number TO Mobile_Number;
Table altered successfully.
-- 28.	Create a backup/copy of the Appointment table and remove all records from the copied table without removing its structure.
CREATE TABLE Appointment_Backup AS SELECT * FROM Appointment; TRUNCATE TABLE Appointment_Backup;

Table created successfully.

Table truncated successfully.

Appointment_Backup
------------------
0 records
Structure retained
-- 29.	Create a temporary table named Test_Doctor with the same structure as the Doctor table, remove the table completely, and then verify whether the table still exists. 
CREATE TABLE Test_Doctor AS SELECT * FROM Doctor WHERE 1 = 0; DROP TABLE Test_Doctor;
Table created successfully.

Table dropped successfully.

-- 30.	Create a backup table of Patient, modify some records in it, and then write appropriate SQL statements to remove all records while retaining the table structure, and finally remove the table itself.
CREATE TABLE Patient_Backup AS SELECT * FROM Patient; UPDATE Patient_Backup SET Age = Age + 1 WHERE Patient_ID = 1; TRUNCATE TABLE Patient_Backup; DROP TABLE Patient_Backup;

Table created successfully.

1 row updated.

Table truncated successfully.

Table dropped successfully.

Patient_Backup
--------------
Table does not exist

-----------Hospital Database — SQL Practice Exercise----------------
-------------------Part A — Basic to Medium--------------------------

1.Display the names and ages of all patients.
SELECT Name, Age FROM Patient;
NAME            AGE
--------------  ---
Anita Verma     34
Rahul Sharma    45
Priya Patel     28
Ankit Joshi     62
Sneha Mehta     50
Vikram Rao      70
Kavita Desai    55
Manoj Trivedi   65
Neha Shah       22
Suresh Iyer     38

2.Display the names of all female patients.
SELECT Name FROM Patient WHERE Gender = 'Female';
NAME
-------------
Anita Verma
Priya Patel
Sneha Mehta
Kavita Desai
Neha Shah

3.Display the names and phone numbers of male patients who are above 50 years of age.
SELECT Name, Phone_Number FROM Patient WHERE Gender = 'Male' AND Age > 50;
NAME            PHONE_NUMBER
--------------  ------------
Ankit Joshi     9898765432
Vikram Rao      9723456781
Manoj Trivedi   9834567890

4.Display all patients whose age is between 30 and 60.
SELECT * FROM Patient WHERE Age BETWEEN 30 AND 60;
PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
1           Anita Verma    34   Female  9876543210    Satellite, Ahmedabad
2           Rahul Sharma   45   Male    9823456712    Navrangpura, Ahmedabad
5           Sneha Mehta    50   Female  9765432189    Vastrapur, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
10          Suresh Iyer    38   Male    9856234109    Vastral, Ahmedabad

5.Display the details of patients whose age is either 22, 34, 45 or 62.
SELECT * FROM Patient WHERE Age IN (22, 34, 45, 62);
PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
1           Anita Verma    34   Female  9876543210    Satellite, Ahmedabad
2           Rahul Sharma   45   Male    9823456712    Navrangpura, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad

6.Display all patients who are **not** from Bopal or Satellite.
SELECT * FROM Patient WHERE Address NOT LIKE 'Bopal%' AND Address NOT LIKE 'Satellite%';
PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
2           Rahul Sharma   45   Male    9823456712    Navrangpura, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
5           Sneha Mehta    50   Female  9765432189    Vastrapur, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad
10          Suresh Iyer    38   Male    9856234109    Vastral, Ahmedabad

7.Display the names of patients whose name starts with the letter A.
SELECT Name FROM Patient WHERE Name LIKE 'A%';
NAME
-------------
Anita Verma
Ankit Joshi

8.Display the names of patients whose name ends with the letter a.
SELECT Name FROM Patient WHERE Name LIKE '%a';
NAME
-------------
Anita Verma
Priya Patel
Kavita Desai

9.Display the names of patients whose name contains the letter h.
SELECT Name FROM Patient WHERE LOWER(Name) LIKE '%h%';
NAME
-------------
Rahul Sharma
Sneha Mehta
Neha Shah
Suresh Iyer

10.Display the details of patients whose address contains the word Ahmedabad.
SELECT * FROM Patient WHERE Address LIKE '%Ahmedabad%';
PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
1           Anita Verma    34   Female  9876543210    Satellite, Ahmedabad
2           Rahul Sharma   45   Male    9823456712    Navrangpura, Ahmedabad
3           Priya Patel    28   Female  9812345678    Bopal, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
5           Sneha Mehta    50   Female  9765432189    Vastrapur, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad
10          Suresh Iyer    38   Male    9856234109    Vastral, Ahmedabad

--------------------Part B — WHERE + Multiple Conditions----------------------

11. Display the names, gender and age of female patients whose age is greater than 40.
SELECT Name, Gender, Age FROM Patient WHERE Gender = 'Female' AND Age > 40;

NAME           GENDER   AGE
-------------  -------  ---
Sneha Mehta    Female    50
Kavita Desai   Female    55

12. Display male patients whose age is between 40 and 70.
SELECT * FROM Patient WHERE Gender = 'Male' AND Age BETWEEN 40 AND 70;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
2           Rahul Sharma   45   Male    9823456712    Navrangpura, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad

13. Display female patients who are either below 30 or above 50 years of age.
SELECT * FROM Patient WHERE Gender = 'Female' AND (Age < 30 OR Age > 50);

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
3           Priya Patel    28   Female  9812345678    Bopal, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad

14. Display patients who are from either Bopal, Satellite or Vastrapur.
SELECT * FROM Patient WHERE Address LIKE 'Bopal%' OR Address LIKE 'Satellite%' OR Address LIKE 'Vastrapur%';

PATIENT_ID  NAME          AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  ------------  ---  ------  ------------  ------------------------
1           Anita Verma   34   Female  9876543210    Satellite, Ahmedabad
3           Priya Patel   28   Female  9812345678    Bopal, Ahmedabad
5           Sneha Mehta   50   Female  9765432189    Vastrapur, Ahmedabad

15. Display patients who are not from Ahmedabad.
This question is intentionally interesting because students should think about what information is actually present in the Address column.
SELECT * FROM Patient WHERE Address NOT LIKE '%Ahmedabad%';

no rows selected

16. Display patients whose name contains the letter a and whose age is greater than 30.
SELECT * FROM Patient WHERE LOWER(Name) LIKE '%a%' AND Age > 30;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
1           Anita Verma    34   Female  9876543210    Satellite, Ahmedabad
2           Rahul Sharma   45   Male    9823456712    Navrangpura, Ahmedabad
5           Sneha Mehta    50   Female  9765432189    Vastrapur, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad

17. Display patients whose name starts with S or whose name starts with P.
SELECT * FROM Patient WHERE Name LIKE 'S%' OR Name LIKE 'P%';

PATIENT_ID  NAME          AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  ------------  ---  ------  ------------  ------------------------
3           Priya Patel   28   Female  9812345678    Bopal, Ahmedabad
5           Sneha Mehta   50   Female  9765432189    Vastrapur, Ahmedabad
10          Suresh Iyer   38   Male    9856234109    Vastral, Ahmedabad

18. Display patients whose age is between 25 and 65 and whose gender is Female.
SELECT * FROM Patient WHERE Age BETWEEN 25 AND 65 AND Gender = 'Female';

PATIENT_ID  NAME          AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  ------------  ---  ------  ------------  ------------------------
1           Anita Verma   34   Female  9876543210    Satellite, Ahmedabad
3           Priya Patel   28   Female  9812345678    Bopal, Ahmedabad
5           Sneha Mehta   50   Female  9765432189    Vastrapur, Ahmedabad
7           Kavita Desai  55   Female  9812309876    Chandkheda, Ahmedabad

19. Display patients whose age is not between 30 and 50.
SELECT * FROM Patient WHERE Age NOT BETWEEN 30 AND 50;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
3           Priya Patel    28   Female  9812345678    Bopal, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad

20. Display patients whose age is either less than 30 or greater than 60, and arrange them from youngest to oldest.
SELECT * FROM Patient WHERE Age < 30 OR Age > 60 ORDER BY Age ASC;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad
3           Priya Patel    28   Female  9812345678    Bopal, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad

------------------Part C — ORDER BY----------------------

21.Display all patients and arrange them according to their age from youngest to oldest.
SELECT * FROM Patient ORDER BY Age ASC;

PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  ------------  ------------------------
9           Neha Shah       22   Female  9845123098    Thaltej, Ahmedabad
3           Priya Patel     28   Female  9812345678    Bopal, Ahmedabad
1           Anita Verma     34   Female  9876543210    Satellite, Ahmedabad
10          Suresh Iyer     38   Male    9856234109    Vastral, Ahmedabad
2           Rahul Sharma    45   Male    9823456712    Navrangpura, Ahmedabad
5           Sneha Mehta     50   Female  9765432189    Vastrapur, Ahmedabad
7           Kavita Desai    55   Female  9812309876    Chandkheda, Ahmedabad
4           Ankit Joshi     62   Male    9898765432    Maninagar, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890    Naranpura, Ahmedabad
6           Vikram Rao      70   Male    9723456781    Paldi, Ahmedabad

22.Display all patients and arrange them according to their age from oldest to youngest.
SELECT * FROM Patient ORDER BY Age DESC;

PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  ------------  ------------------------
6           Vikram Rao      70   Male    9723456781    Paldi, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890    Naranpura, Ahmedabad
4           Ankit Joshi     62   Male    9898765432    Maninagar, Ahmedabad
7           Kavita Desai    55   Female  9812309876    Chandkheda, Ahmedabad
5           Sneha Mehta     50   Female  9765432189    Vastrapur, Ahmedabad
2           Rahul Sharma    45   Male    9823456712    Navrangpura, Ahmedabad
10          Suresh Iyer     38   Male    9856234109    Vastral, Ahmedabad
1           Anita Verma     34   Female  9876543210    Satellite, Ahmedabad
3           Priya Patel     28   Female  9812345678    Bopal, Ahmedabad
9           Neha Shah       22   Female  9845123098    Thaltej, Ahmedabad

23.Display all patients alphabetically by their name.
SELECT * FROM Patient ORDER BY Name ASC;

PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  ------------  ------------------------
4           Ankit Joshi     62   Male    9898765432    Maninagar, Ahmedabad
1           Anita Verma     34   Female  9876543210    Satellite, Ahmedabad
7           Kavita Desai    55   Female  9812309876    Chandkheda, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890    Naranpura, Ahmedabad
9           Neha Shah       22   Female  9845123098    Thaltej, Ahmedabad
3           Priya Patel     28   Female  9812345678    Bopal, Ahmedabad
2           Rahul Sharma    45   Male    9823456712    Navrangpura, Ahmedabad
5           Sneha Mehta     50   Female  9765432189    Vastrapur, Ahmedabad
10          Suresh Iyer     38   Male    9856234109    Vastral, Ahmedabad
6           Vikram Rao      70   Male    9723456781    Paldi, Ahmedabad

24.Display female patients alphabetically by name.
SELECT * FROM Patient WHERE Gender = 'Female' ORDER BY Name ASC;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
1           Anita Verma    34   Female  9876543210    Satellite, Ahmedabad
7           Kavita Desai   55   Female  9812309876    Chandkheda, Ahmedabad
9           Neha Shah      22   Female  9845123098    Thaltej, Ahmedabad
3           Priya Patel    28   Female  9812345678    Bopal, Ahmedabad
5           Sneha Mehta    50   Female  9765432189    Vastrapur, Ahmedabad

25.Display patients by age from highest to lowest. If two patients have the same age, arrange their names alphabetically.
SELECT * FROM Patient ORDER BY Age DESC, Name ASC;

PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  ------------  ------------------------
6           Vikram Rao      70   Male    9723456781    Paldi, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890    Naranpura, Ahmedabad
4           Ankit Joshi     62   Male    9898765432    Maninagar, Ahmedabad
7           Kavita Desai    55   Female  9812309876    Chandkheda, Ahmedabad
5           Sneha Mehta     50   Female  9765432189    Vastrapur, Ahmedabad
2           Rahul Sharma    45   Male    9823456712    Navrangpura, Ahmedabad
10          Suresh Iyer     38   Male    9856234109    Vastral, Ahmedabad
1           Anita Verma     34   Female  9876543210    Satellite, Ahmedabad
3           Priya Patel     28   Female  9812345678    Bopal, Ahmedabad
9           Neha Shah       22   Female  9845123098    Thaltej, Ahmedabad

26.Display all doctors according to their consultation fee from highest to lowest.
SELECT * FROM Doctor ORDER BY Consultation_Fee DESC;

DOCTOR_ID  NAME         SPECIALIZATION       DEPARTMENT          CONSULTATION_FEE
---------  -----------  -------------------  ------------------  ----------------
1          Dr. Mehta    Cardiologist         Cardiology               800.00
2          Dr. Kapoor   Orthopedic            Orthopedics              600.00
5          Dr. Iyer     Pediatrician          Pediatrics               550.00
3          Dr. Nair     Dermatologist        Dermatology               500.00
4          Dr. Singh    General Physician    General Medicine          400.00

27.Display doctors whose consultation fee is between 400 and 700 and arrange them from lowest fee to highest fee.
SELECT * FROM Doctor WHERE Consultation_Fee BETWEEN 400 AND 700 ORDER BY Consultation_Fee ASC;

DOCTOR_ID  NAME         SPECIALIZATION       DEPARTMENT          CONSULTATION_FEE
---------  -----------  -------------------  ------------------  ----------------
4          Dr. Singh    General Physician    General Medicine          400.00
3          Dr. Nair     Dermatologist        Dermatology                500.00
5          Dr. Iyer     Pediatrician         Pediatrics                 550.00
2          Dr. Kapoor   Orthopedic            Orthopedics                600.00

--------------------Part D — String Functions---------------------

28.Display each patient's name along with the number of characters in their name.

SELECT Name, LENGTH(Name) AS Number_Of_Characters FROM Patient;

NAME            NUMBER_OF_CHARACTERS
--------------  --------------------
Anita Verma     11
Rahul Sharma    12
Priya Patel     11
Ankit Joshi     10
Sneha Mehta     11
Vikram Rao      10
Kavita Desai    12
Manoj Trivedi   13
Neha Shah        9
Suresh Iyer     11

29.Display each patient's name in uppercase.
SELECT UPPER(Name) AS Name FROM Patient;

NAME
--------------
ANITA VERMA
RAHUL SHARMA
PRIYA PATEL
ANKIT JOSHI
SNEHA MEHTA
VIKRAM RAO
KAVITA DESAI
MANOJ TRIVEDI
NEHA SHAH
SURESH IYER

30.Display each doctor's name in lowercase along with their specialization.
SELECT LOWER(Name) AS Name, Specialization FROM Doctor;

NAME         SPECIALIZATION
-----------  -------------------
dr. mehta    Cardiologist
dr. kapoor   Orthopedic
dr. nair     Dermatologist
dr. singh    General Physician
dr. iyer     Pediatrician

31.Display the first five characters of every patient's name
SELECT SUBSTR(Name, 1, 5) AS First_Five_Characters FROM Patient;

FIRST_FIVE_CHARACTERS
---------------------
Anita
Rahul
Priya
Ankit
Sneha
Vikra
Kavit
Manoj
Neha
Sures

32.Display the position of the letter a in each patient's name.
SELECT Name, INSTR(LOWER(Name), 'a') AS Position_Of_A FROM Patient;
3. Output
NAME            POSITION_OF_A
--------------  -------------
Anita Verma              1
Rahul Sharma             2
Priya Patel              5
Ankit Joshi              1
Sneha Mehta              5
Vikram Rao               3
Kavita Desai             2
Manoj Trivedi             2
Neha Shah                3
Suresh Iyer              5

33.Display doctors whose specialization contains the word ologist.
SELECT * FROM Doctor WHERE Specialization LIKE '%ologist%';

DOCTOR_ID  NAME         SPECIALIZATION  DEPARTMENT   CONSULTATION_FEE
---------  -----------  --------------  -----------  ----------------
1          Dr. Mehta    Cardiologist    Cardiology           800.00
3          Dr. Nair     Dermatologist   Dermatology          500.00

34.Display each patient's name and address together as one output column in the following format:
Anita Verma - Satellite, Ahmedabad

SELECT Name || ' - ' || Address AS Patient_Details FROM Patient;

PATIENT_DETAILS
-------------------------------------------
Anita Verma - Satellite, Ahmedabad
Rahul Sharma - Navrangpura, Ahmedabad
Priya Patel - Bopal, Ahmedabad
Ankit Joshi - Maninagar, Ahmedabad
Sneha Mehta - Vastrapur, Ahmedabad
Vikram Rao - Paldi, Ahmedabad
Kavita Desai - Chandkheda, Ahmedabad
Manoj Trivedi - Naranpura, Ahmedabad
Neha Shah - Thaltej, Ahmedabad
Suresh Iyer - Vastral, Ahmedabad

35.Display patients whose names contain exactly five characters.
Think carefully about which string function can help you.

SELECT Name FROM Patient WHERE LENGTH(Name) = 5;

NAME
-----
no rows selected
----------------Part E — Numeric Functions-------------------

36.Display each doctor's name and consultation fee rounded to the nearest hundred.

SELECT Name, ROUND(Consultation_Fee, -2) AS Rounded_Fee FROM Doctor;

NAME         ROUNDED_FEE
-----------  -----------
Dr. Mehta       800
Dr. Kapoor      600
Dr. Nair        500
Dr. Singh       400
Dr. Iyer        600

37.Display each doctor's name and consultation fee after increasing the fee by 10%. Round the result to two decimal places.

SELECT Name, ROUND(Consultation_Fee * 1.10, 2) AS Increased_Fee FROM Doctor;

NAME         INCREASED_FEE
-----------  -------------
Dr. Mehta        880.00
Dr. Kapoor       660.00
Dr. Nair         550.00
Dr. Singh        440.00
Dr. Iyer         605.00

38.Display patients whose age is an even number.
SELECT * FROM Patient WHERE MOD(Age, 2) = 0;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  ------------  ------------------------
1           Anita Verma    34   Female  9876543210    Satellite, Ahmedabad
3           Priya Patel    28   Female  9812345678    Bopal, Ahmedabad
4           Ankit Joshi    62   Male    9898765432    Maninagar, Ahmedabad
5           Sneha Mehta    50   Female  9765432189    Vastrapur, Ahmedabad
6           Vikram Rao     70   Male    9723456781    Paldi, Ahmedabad
8           Manoj Trivedi  65   Male    9834567890    Naranpura, Ahmedabad

39.Display patients whose age is an odd number.
SELECT * FROM Patient WHERE MOD(Age, 2) <> 0;
PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  -------------  ------------------------
2           Rahul Sharma    45   Male    9823456712     Navrangpura, Ahmedabad
7           Kavita Desai    55   Female  9812309876     Chandkheda, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890     Naranpura, Ahmedabad

40.Display the difference between the oldest patient's age and each patient's age.

SELECT Name, Age, (SELECT MAX(Age) FROM Patient) - Age AS Age_Difference FROM Patient;

NAME            AGE  AGE_DIFFERENCE
--------------  ---  --------------
Anita Verma     34       36
Rahul Sharma    45       25
Priya Patel     28       42
Ankit Joshi     62        8
Sneha Mehta     50       20
Vikram Rao      70        0
Kavita Desai    55       15
Manoj Trivedi   65        5
Neha Shah       22       48
Suresh Iyer     38       32

--------------------Part F — Date Functions--------------------

The appointment table contains appointment dates from June and July 2026. 
41.Display all appointment IDs and appointment dates in the format: DD-MM-YYYY
SELECT Appointment_ID, TO_CHAR(Appointment_Date, 'DD-MM-YYYY') AS Appointment_Date
FROM Appointment;

APPOINTMENT_ID  APPOINTMENT_DATE
--------------  ----------------
1               29-06-2026
2               30-06-2026
3               01-07-2026
4               29-06-2026
5               30-06-2026
6               01-07-2026
7               02-07-2026
8               29-06-2026
9               30-06-2026
10              03-07-2026
11              29-06-2026
12              01-07-2026
13              02-07-2026
14              03-07-2026
15              04-07-2026

42.Display appointments scheduled after 30-June-2026.
SELECT * FROM Appointment
WHERE Appointment_Date > DATE '2026-06-30';

APPOINTMENT_ID  PATIENT_ID  DOCTOR_ID  APPOINTMENT_DATE
--------------  ----------  ---------  ----------------
3               3           1          01-JUL-2026
6               1           2          01-JUL-2026
7               6           2          02-JUL-2026
10              9           3          03-JUL-2026
12              2           4          01-JUL-2026
13              3           4          02-JUL-2026
14              4           4          03-JUL-2026
15              5           4          04-JUL-2026

43.Display appointments scheduled between 29-June-2026 and 02-July-2026.
SELECT * FROM Appointment WHERE Appointment_Date BETWEEN DATE '2026-06-29' AND DATE '2026-07-02';

APPOINTMENT_ID  PATIENT_ID  DOCTOR_ID  APPOINTMENT_DATE
--------------  ----------  ---------  ----------------
1               1           1          29-JUN-2026
2               2           1          30-JUN-2026
3               3           1          01-JUL-2026
4               4           2          29-JUN-2026
5               5           2          30-JUN-2026
6               1           2          01-JUL-2026
7               6           2          02-JUL-2026
8               7           3          29-JUN-2026
9               8           3          30-JUN-2026
11              10          4          29-JUN-2026
12              2           4          01-JUL-2026
13              3           4          02-JUL-2026

44.Display the appointment date and the date obtained by adding 7 days to the appointment date.
SELECT Appointment_Date, Appointment_Date + 7 AS Date_After_7_Days
FROM Appointment;

APPOINTMENT_DATE  DATE_AFTER_7_DAYS
----------------  -----------------
29-JUN-2026       06-JUL-2026
30-JUN-2026       07-JUL-2026
01-JUL-2026       08-JUL-2026
29-JUN-2026       06-JUL-2026
30-JUN-2026       07-JUL-2026
01-JUL-2026       08-JUL-2026
02-JUL-2026       09-JUL-2026
29-JUN-2026       06-JUL-2026
30-JUN-2026       07-JUL-2026
03-JUL-2026       10-JUL-2026
29-JUN-2026       06-JUL-2026
01-JUL-2026       08-JUL-2026
02-JUL-2026       09-JUL-2026
03-JUL-2026       10-JUL-2026
04-JUL-2026       11-JUL-2026

45.Display each appointment date and the last day of that month.
SELECT Appointment_Date, LAST_DAY(Appointment_Date) AS Last_Day_Of_Month FROM Appointment;

APPOINTMENT_DATE  LAST_DAY_OF_MONTH
----------------  -----------------
29-JUN-2026       30-JUN-2026
30-JUN-2026       30-JUN-2026
01-JUL-2026       31-JUL-2026
29-JUN-2026       30-JUN-2026
30-JUN-2026       30-JUN-2026
01-JUL-2026       31-JUL-2026
02-JUL-2026       31-JUL-2026
29-JUN-2026       30-JUN-2026
30-JUN-2026       30-JUN-2026
03-JUL-2026       31-JUL-2026
29-JUN-2026       30-JUN-2026
01-JUL-2026       31-JUL-2026
02-JUL-2026       31-JUL-2026
03-JUL-2026       31-JUL-2026
04-JUL-2026       31-JUL-2026

46.Display the year of each appointment.
SELECT Appointment_ID,EXTRACT(YEAR FROM Appointment_Date) AS Appointment_Year FROM Appointment;

APPOINTMENT_ID  APPOINTMENT_YEAR
--------------  ----------------
1               2026
2               2026
3               2026
4               2026
5               2026
6               2026
7               2026
8               2026
9               2026
10              2026
11              2026
12              2026
13              2026
14              2026
15              2026

47.Display appointments that occurred in July 2026.
SELECT * FROM Appointment WHERE Appointment_Date >= DATE '2026-07-01' AND Appointment_Date < DATE '2026-08-01';

APPOINTMENT_ID  PATIENT_ID  DOCTOR_ID  APPOINTMENT_DATE
--------------  ----------  ---------  ----------------
3               3           1          01-JUL-2026
6               1           2          01-JUL-2026
7               6           2          02-JUL-2026
10              9           3          03-JUL-2026
12              2           4          01-JUL-2026
13              3           4          02-JUL-2026
14              4           4          03-JUL-2026
15              5           4          04-JUL-2026

48.Display appointment dates in ascending order and appointment IDs in descending order.
SELECT Appointment_ID, Appointment_Date FROM Appointment ORDER BY Appointment_Date ASC, Appointment_ID DESC;

APPOINTMENT_ID  APPOINTMENT_DATE
--------------  ----------------
11              29-JUN-2026
8               29-JUN-2026
4               29-JUN-2026
1               29-JUN-2026
9               30-JUN-2026
5               30-JUN-2026
2               30-JUN-2026
12              01-JUL-2026
6               01-JUL-2026
3               01-JUL-2026
13              02-JUL-2026
7               02-JUL-2026
14              03-JUL-2026
10              03-JUL-2026
15              04-JUL-2026

----------Part G — Aggregate Functions Without GROUP B-----------
Here students must understand an important concept:
Without GROUP BY, an aggregate function generally produces one overall result for the selected rows.
49.Find the total number of patients.
SELECT COUNT(*) AS Total_Patients FROM Patient
TOTAL_PATIENTS
--------------
10

50.Find the average age of all patients.
SELECT AVG(Age) AS Average_Age FROM Patient;
AVERAGE_AGE
-----------
46.9

51.Find the age of the youngest patient.
SELECT MIN(Age) AS Youngest_Age FROM Patient;

YOUNGEST_AGE
------------
22

52.Find the age of the oldest patient.
SELECT MAX(Age) AS Oldest_Age FROM Patient;

OLDEST_AGE
----------
70

53.Find the total of all doctors' consultation fees.
SELECT SUM(Consultation_Fee) AS Total_Fee FROM Doctor;

TOTAL_FEE
---------
2850

54.Find the average consultation fee of all doctors.
SELECT AVG(Consultation_Fee) AS Average_Fee FROM Doctor;

AVERAGE_FEE
-----------
570

55.Find the highest consultation fee.
SELECT MAX(Consultation_Fee) AS Highest_Fee FROM Doctor;

HIGHEST_FEE
-----------
800

56.Find the lowest consultation fee.
SELECT MIN(Consultation_Fee) AS Lowest_Fee FROM Doctor;

LOWEST_FEE
----------
400

57.Find the number of doctors whose consultation fee is greater than 500.
SELECT COUNT(*) AS Number_Of_Doctors FROM Doctor WHERE Consultation_Fee > 500;

NUMBER_OF_DOCTORS
-----------------
3

58.Find the number of female patients whose age is greater than 40
SELECT COUNT(*) AS Female_Patients FROM Patient WHERE Gender = 'Female' AND Age > 40;

FEMALE_PATIENTS
---------------
2

--------------Part H — Medium–High Level Mixed Questions---------------

These are the ones I would give after students have practiced the earlier questions.
59. Display the names of female patients whose names contain the letter a, whose age is between 25 and 60, and arrange them from oldest to youngest.

SELECT Name FROM Patient WHERE Gender = 'Female' AND LOWER(Name) LIKE '%a%' AND Age BETWEEN 25 AND 60 ORDER BY Age DESC;

NAME
-------------
Kavita Desai
Sneha Mehta
Anita Verma
Priya Patel

60.Display doctors whose specialization contains the letter o and whose consultation fee is greater than 500. Arrange them alphabetically by specialization.

SELECT * FROM Doctor WHERE LOWER(Specialization) LIKE '%o%' AND Consultation_Fee > 500 ORDER BY Specialization ASC;

DOCTOR_ID  NAME         SPECIALIZATION  DEPARTMENT    CONSULTATION_FEE
---------  -----------  --------------  ------------  ----------------
1          Dr. Mehta    Cardiologist    Cardiology          800.00
2          Dr. Kapoor   Orthopedic       Orthopedics         600.00
5          Dr. Iyer     Pediatrician     Pediatrics           550.00

61.Display patients whose names start with either A, P or S, and whose age is greater than 30.

SELECT * FROM Patient WHERE (Name LIKE 'A%' OR Name LIKE 'P%' OR Name LIKE 'S%') AND Age > 30;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  -------------  ------------------------
1           Anita Verma    34   Female  9876543210     Satellite, Ahmedabad
4           Ankit Joshi    62   Male    9898765432     Maninagar, Ahmedabad
5           Sneha Mehta    50   Female  9765432189     Vastrapur, Ahmedabad
10          Suresh Iyer    38   Male    9856234109     Vastral, Ahmedabad

62.Display patients whose name contains the letter e, whose age is not between 30 and 60, and arrange them alphabetically.

SELECT * FROM Patient WHERE LOWER(Name) LIKE '%e%' AND Age NOT BETWEEN 30 AND 60 ORDER BY Name ASC;

PATIENT_ID  NAME           AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  -------------  ---  ------  -------------  ------------------------
8           Manoj Trivedi  65   Male    9834567890     Naranpura, Ahmedabad
4           Ankit Joshi    62   Male    9898765432     Maninagar, Ahmedabad
7           Kavita Desai   55   Female  9812309876     Chandkheda, Ahmedabad
6           Vikram Rao     70   Male    9723456781     Paldi, Ahmedabad

63.Display patients whose address contains Ahmedabad but whose name does not start with A.

SELECT * FROM Patient WHERE Address LIKE '%Ahmedabad%' AND Name NOT LIKE 'A%';

PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  -------------  ------------------------
2           Rahul Sharma    45   Male    9823456712     Navrangpura, Ahmedabad
3           Priya Patel     28   Female  9812345678     Bopal, Ahmedabad
5           Sneha Mehta     50   Female  9765432189     Vastrapur, Ahmedabad
6           Vikram Rao      70   Male    9723456781     Paldi, Ahmedabad
7           Kavita Desai    55   Female  9812309876     Chandkheda, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890     Naranpura, Ahmedabad
9           Neha Shah       22   Female  9845123098     Thaltej, Ahmedabad
10          Suresh Iyer     38   Male    9856234109     Vastral, Ahmedabad

64.Display doctors whose consultation fee is between 500 and 800, excluding the doctor whose specialization is Dermatologist.

SELECT * FROM Doctor WHERE Consultation_Fee BETWEEN 500 AND 800 AND Specialization <> 'Dermatologist';

DOCTOR_ID  NAME         SPECIALIZATION  DEPARTMENT    CONSULTATION_FEE
---------  -----------  --------------  ------------  ----------------
1          Dr. Mehta    Cardiologist    Cardiology          800.00
2          Dr. Kapoor   Orthopedic       Orthopedics         600.00
5          Dr. Iyer     Pediatrician     Pediatrics           550.00

65.Display patients whose age is greater than the average age of all patients.
Challenge: Use an aggregate function without GROUP BY.

SELECT * FROM Patient WHERE Age > (SELECT AVG(Age) FROM Patient);

PATIENT_ID  NAME            AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  --------------  ---  ------  -------------  ------------------------
5           Sneha Mehta     50   Female  9765432189     Vastrapur, Ahmedabad
6           Vikram Rao      70   Male    9723456781     Paldi, Ahmedabad
7           Kavita Desai    55   Female  9812309876     Chandkheda, Ahmedabad
8           Manoj Trivedi   65   Male    9834567890     Naranpura, Ahmedabad

66.Display doctors whose consultation fee is greater than the average consultation fee of all doctors.

SELECT * FROM Doctor WHERE Consultation_Fee > (SELECT AVG(Consultation_Fee) FROM Doctor);

DOCTOR_ID  NAME         SPECIALIZATION  DEPARTMENT    CONSULTATION_FEE
---------  -----------  --------------  ------------  ----------------
1          Dr. Mehta    Cardiologist    Cardiology          800.00
2          Dr. Kapoor   Orthopedic       Orthopedics         600.00

67.Display the names of patients whose age is equal to the age of the youngest patient.

SELECT Name FROM Patient WHERE Age = (SELECT MIN(Age) FROM Patient);

NAME
-------------
Neha Shah

68.Display the names of doctors whose consultation fee is equal to the highest consultation fee.

SELECT Name FROM Doctor WHERE Consultation_Fee = (SELECT MAX(Consultation_Fee) FROM Doctor);

NAME
-----------
Dr. Mehta

69.Display appointment records for dates that are later than the average appointment date.
This is intentionally a challenging date/subquery problem. If subqueries have not yet been taught, keep this as a challenge question for later.

SELECT * FROM Appointment WHERE Appointment_Date > (SELECT AVG(Appointment_Date) FROM Appointment);

APPOINTMENT_ID  PATIENT_ID  DOCTOR_ID  APPOINTMENT_DATE
--------------  ----------  ---------  ----------------
7               6           2          02-JUL-2026
10              9           3          03-JUL-2026
13              3           4          02-JUL-2026
14              4           4          03-JUL-2026
15              5           4          04-JUL-2026

70. Display the total number of appointments scheduled between 29-June-2026 and 03-July-2026.

SELECT COUNT(*) AS Total_Appointments FROM Appointment WHERE Appointment_Date BETWEEN DATE '2026-06-29' AND DATE '2026-07-03';

TOTAL_APPOINTMENTS
------------------
14