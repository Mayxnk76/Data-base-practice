  CREATE TABLE Patient (
      Patient_ID     INT PRIMARY KEY,
      Name           VARCHAR(50),
      Age            INT,
      Gender         VARCHAR(10),
      Phone_Number   VARCHAR(15),
      Address        VARCHAR(100)
  );

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

DESC Patient;
Name           Null?    Type
-------------- -------- ----------------
PATIENT_ID     NOT NULL NUMBER(38)
NAME                    VARCHAR2(50)
AGE                     NUMBER(38)
GENDER                  VARCHAR2(10)
PHONE_NUMBER            VARCHAR2(15)
ADDRESS                 VARCHAR2(100)

SELECT * FROM Patient;
PATIENT_ID  NAME             AGE  GENDER  PHONE_NUMBER  ADDRESS
----------  ---------------  ---  ------  ------------  -------------------------
1           Anita Verma       34  Female  9876543210    Satellite, Ahmedabad
2           Rahul Sharma      45  Male    9823456712    Navrangpura, Ahmedabad
3           Priya Patel       28  Female  9812345678    Bopal, Ahmedabad
4           Ankit Joshi       62  Male    9898765432    Maninagar, Ahmedabad
5           Sneha Mehta       50  Female  9765432189    Vastrapur, Ahmedabad
6           Vikram Rao        70  Male    9723456781    Paldi, Ahmedabad
7           Kavita Desai      55  Female  9812309876    Chandkheda, Ahmedabad
8           Manoj Trivedi     65  Male    9834567890    Naranpura, Ahmedabad
9           Neha Shah         22  Female  9845123098    Thaltej, Ahmedabad
10          Suresh Iyer       38  Male    9856234109    Vastral, Ahmedabad

CREATE TABLE Doctor (
    Doctor_ID          INT PRIMARY KEY,
    Name                VARCHAR(50),
    Specialization      VARCHAR(50),
    Department          VARCHAR(50),
    Consultation_Fee    DECIMAL(8,2)
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

DESC Doctor;
Name              Null?    Type
----------------- -------- ----------------
DOCTOR_ID         NOT NULL NUMBER(38)
NAME                       VARCHAR2(50)
SPECIALIZATION             VARCHAR2(50)
DEPARTMENT                 VARCHAR2(50)
CONSULTATION_FEE           NUMBER(8,2)

SELECT * FROM Doctor;
DOCTOR_ID  NAME         SPECIALIZATION      DEPARTMENT          CONSULTATION_FEE
---------  -----------  ------------------  ------------------  ----------------
1          Dr. Mehta    Cardiologist        Cardiology          800.00
2          Dr. Kapoor   Orthopedic          Orthopedics         600.00
3          Dr. Nair     Dermatologist       Dermatology         500.00
4          Dr. Singh    General Physician   General Medicine   400.00
5          Dr. Iyer     Pediatrician        Pediatrics           550.00

CREATE TABLE Appointment (
    Appointment_ID   INT PRIMARY KEY,
    Patient_ID       INT,
    Doctor_ID        INT,
    Appointment_Date DATE,
    Visit_Time       VARCHAR,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

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

DESC Appointment;
Name               Null?    Type
------------------ -------- ----------------
APPOINTMENT_ID     NOT NULL NUMBER(38)
PATIENT_ID                  NUMBER(38)
DOCTOR_ID                   NUMBER(38)
APPOINTMENT_DATE            DATE
VISIT_TIME                  VARCHAR2

SELECT * FROM Appointment;

APPOINTMENT_ID  PATIENT_ID  DOCTOR_ID  APPOINTMENT_DATE  VISIT_TIME
--------------  ----------  ---------  ----------------  ----------
1               1          1          29-JUN-26
2               2          1          30-JUN-26
3               3          1          01-JUL-26
4               4          2          29-JUN-26
5               5          2          30-JUN-26
6               1          2          01-JUL-26
7               6          2          02-JUL-26
8               7          3          29-JUN-26
9               8          3          30-JUN-26
10              9          3          03-JUL-26
11              10         4          29-JUN-26
12              2          4          01-JUL-26
13              3          4          02-JUL-26
14              4          4          03-JUL-26
15              5          4          04-JUL-26