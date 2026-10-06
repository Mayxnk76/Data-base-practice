CREATE TABLE Customer
(
    Customer_ID       NUMBER(5)    PRIMARY KEY,
    Customer_Name     VARCHAR2(50)  NOT NULL,
    Email  VARCHAR2(100)  UNIQUE,
    Mobile_No   VARCHAR2(10) UNIQUE,
    Gender CHAR(1)  CHECK (Gender IN ('M','F','O')),
    City VARCHAR2(30) DEFAULT 'Ahmedabad', 
Registration_Date DATE DEFAULT SYSDATE
);

Table created.

INSERT INTO Customer (Customer_ID, Customer_Name, Email, Mobile_No, Gender, City)
VALUES (101, 'Rahul Patel', 'rahul@gmail.com', '9876543210', 'M', 'Ahmedabad');

INSERT INTO Customer (Customer_ID, Customer_Name, Email, Mobile_No, Gender, City)
VALUES (102, 'Neha Shah', 'neha@gmail.com', '9876543211', 'F', 'Surat');

INSERT INTO Customer (Customer_ID, Customer_Name, Email, Mobile_No, Gender, City)
VALUES (103, 'Amit Mehta', 'amit@gmail.com', '9876543212', 'M', 'Vadodara');

INSERT INTO Customer (Customer_ID, Customer_Name, Email, Mobile_No, Gender, City)
VALUES (104, 'Priya Desai', 'priya@gmail.com', '9876543213', 'F', 'Ahmedabad');

INSERT INTO Customer (Customer_ID, Customer_Name, Email, Mobile_No, Gender, City)
VALUES (105, 'Karan Joshi', 'karan@gmail.com', '9876543214', 'M', 'Rajkot');

desc customer;
Name                  Null?    Type
--------------------- -------- ----------------
CUSTOMER_ID            NOT NULL NUMBER(5)
CUSTOMER_NAME          NOT NULL VARCHAR2(50)
EMAIL                           VARCHAR2(100)
MOBILE_NO                       VARCHAR2(10)
GENDER                          CHAR(1)
CITY                            VARCHAR2(30)
REGISTRATION_DATE               DATE

SELECT * FROM Customer;

Output:

CUSTOMER_ID CUSTOMER_NAME EMAIL              MOBILE_NO  GENDER CITY
----------- ------------ ------------------ ---------- ------ ----------
101         Rahul Patel  rahul@gmail.com     9876543210 M      Ahmedabad
102         Neha Shah    neha@gmail.com       9876543211 F      Surat
103         Amit Mehta   amit@gmail.com       9876543212 M      Vadodara
104         Priya Desai  priya@gmail.com     9876543213 F      Ahmedabad
105         Karan Joshi  karan@gmail.com      9876543214 M      Rajkot


CREATE TABLE Category(
    Category_ID       NUMBER(3)  CONSTRAINT PK_Category PRIMARY KEY,
    Category_Name     VARCHAR2(50) CONSTRAINT NN_Category_Name NOT NULL 
    CONSTRAINT UK_Category_Name UNIQUE,
    Description VARCHAR2(200)
);

Table created.

INSERT INTO Category(Category_ID, Category_Name, Description)
VALUES (1, 'Electronics', 'Electronic devices and accessories');

INSERT INTO Category(Category_ID, Category_Name, Description)
VALUES (2, 'Clothing', 'Men and women clothing');

INSERT INTO Category(Category_ID, Category_Name, Description)
VALUES (3, 'Books', 'Academic and general books');

DESC Category;
Name             Null?    Type
---------------- -------- ----------------
CATEGORY_ID      NOT NULL NUMBER(3)
CATEGORY_NAME    NOT NULL VARCHAR2(50)
DESCRIPTION               VARCHAR2(200)

SELECT * FROM Category;

Output:

CATEGORY_ID  CATEGORY_NAME  DESCRIPTION
-----------  -------------  ------------------------------------
1            Electronics    Electronic devices and accessories
2            Clothing       Men and women clothing
3            Books          Academic and general books

CREATE TABLE Product
(
    Product_ID       NUMBER(5)     CONSTRAINT PK_Product PRIMARY KEY,
    Product_Name     VARCHAR2(100)  CONSTRAINT NN_Product_Name NOT NULL,
    Price  NUMBER(10,2)  CONSTRAINT NN_Product_Price NOT NULL ,
    Stock            NUMBER(5)  DEFAULT 0 ,
    Brand            VARCHAR2(50),
    Category_ID      NUMBER(3)  CONSTRAINT NN_Product_Category NOT NULL,
    CONSTRAINT FK_Product_Category  FOREIGN KEY (Category_ID)  REFERENCES category(Category_ID),
CONSTRAINT CHK_Product_Price CHECK (Price > 0),
CONSTRAINT CHK_Product_Stock CHECK (Stock >= 0)
);

Table created.

INSERT INTO Product (Product_ID, Product_Name, Price, Stock, Brand, Category_ID)
VALUES (201, 'Wireless Headphones', 2499.00, 50, 'Boat', 1);

INSERT INTO Product
(Product_ID, Product_Name, Price, Stock, Brand, Category_ID)
VALUES (202, 'Smart Watch', 3999.00, 30, 'Noise', 1);


INSERT INTO Product(Product_ID, Product_Name, Price, Stock, Brand, Category_ID)
VALUES (203, 'Cotton T-Shirt', 799.00, 100, 'Puma', 2);

INSERT INTO Product (Product_ID, Product_Name, Price, Stock, Brand, Category_ID)
VALUES (204, 'Data Structures Book', 650.00, 40, 'McGraw Hill', 3);
INSERT INTO Product (Product_ID, Product_Name, Price, Stock, Brand, Category_ID)
VALUES (205, 'Python Programming', 850.00, 35, 'Pearson', 3);

DESC Product;
Name           Null?    Type
-------------- -------- ----------------
PRODUCT_ID     NOT NULL NUMBER(5)
PRODUCT_NAME   NOT NULL VARCHAR2(100)
PRICE          NOT NULL NUMBER(10,2)
STOCK                   NUMBER(5)
BRAND                   VARCHAR2(50)
CATEGORY_ID    NOT NULL NUMBER(3)

SELECT * FROM Product;
PRODUCT_ID  PRODUCT_NAME             PRICE     STOCK  BRAND          CATEGORY_ID
----------  -----------------------  --------  -----  -------------  -----------
201         Wireless Headphones      2499.00   50     Boat           1
202         Smart Watch              3999.00   30     Noise          1
203         Cotton T-Shirt            799.00   100    Puma           2
204         Data Structures Book      650.00   40     McGraw Hill    3
205         Python Programming        850.00   35     Pearson        3

CREATE TABLE Orders
(
    Order_ID         NUMBER(5)      CONSTRAINT PK_Orders PRIMARY KEY,
    Customer_ID      NUMBER(5)  CONSTRAINT NN_Orders_Customer NOT NULL,
    Order_Date       DATE        DEFAULT SYSDATE,
    Total_Amount     NUMBER(10,2)  CONSTRAINT CHK_Order_Amount   CHECK (Total_Amount >= 0),
    Payment_Mode     VARCHAR2(20) CONSTRAINT CHK_Payment_Mode  CHECK (Payment_Mode IN ('Cash','UPI','Card','NetBanking')),
Status VARCHAR2(20) DEFAULT 'Pending' 
CONSTRAINT CHK_Order_Status  CHECK (Status IN ('Pending','Confirmed','Shipped','Delivered','Cancelled')),
CONSTRAINT FK_Orders_Customer FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

Table created.

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (301, 101, TO_DATE('01-08-2026','DD-MM-YYYY'), 2499, 'UPI', 'Delivered');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (302, 102, TO_DATE('02-08-2026','DD-MM-YYYY'), 3999, 'Card', 'Shipped');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (303, 103, TO_DATE('02-08-2026','DD-MM-YYYY'), 1598, 'Cash', 'Delivered');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (304, 101, TO_DATE('03-08-2026','DD-MM-YYYY'), 1500, 'UPI', 'Confirmed');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (305, 104, TO_DATE('03-08-2026','DD-MM-YYYY'), 850, 'Card', 'Delivered');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (306, 105, TO_DATE('04-08-2026','DD-MM-YYYY'), 4798, 'NetBanking', 'Shipped');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (307, 102, TO_DATE('05-08-2026','DD-MM-YYYY'), 1450, 'UPI', 'Pending');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (308, 103, TO_DATE('05-08-2026','DD-MM-YYYY'), 650, 'Cash', 'Delivered');

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (309, 104, TO_DATE('06-08-2026','DD-MM-YYYY'), 2499, 'Card', 'Confirmed');

INSERT INTO Orders (Order_ID, Customer_ID, Order_Date, Total_Amount, Payment_Mode, Status)
VALUES (310, 101, TO_DATE('06-08-2026','DD-MM-YYYY'), 4798, 'UPI', 'Pending');

DESC Orders;
Name           Null?    Type
-------------- -------- ----------------
ORDER_ID       NOT NULL NUMBER(5)
CUSTOMER_ID    NOT NULL NUMBER(5)
ORDER_DATE              DATE
TOTAL_AMOUNT            NUMBER(10,2)
PAYMENT_MODE            VARCHAR2(20)
STATUS                  VARCHAR2(20)

SELECT * FROM Orders;
ORDER_ID  CUSTOMER_ID  ORDER_DATE  TOTAL_AMOUNT  PAYMENT_MODE  STATUS
--------  -----------  ----------  ------------  ------------  ----------
301       101          01-AUG-26   2499          UPI           Delivered
302       102          02-AUG-26   3999          Card          Shipped
303       103          02-AUG-26   1598          Cash          Delivered
304       101          03-AUG-26   1500          UPI           Confirmed
305       104          03-AUG-26    850          Card          Delivered
306       105          04-AUG-26   4798          NetBanking    Shipped
307       102          05-AUG-26   1450          UPI           Pending
308       103          05-AUG-26    650          Cash          Delivered
309       104          06-AUG-26   2499          Card          Confirmed
310       101          06-AUG-26   4798          UPI           Pending

CREATE TABLE Order_Details
(
    Order_ID  NUMBER(5),
    Product_ID       NUMBER(5),
    Quantity         NUMBER(5) Not Null,
    Price            NUMBER(10,2) NOT NULL,
CONSTRAINT CHK_OrderDetails_Price  CHECK (Price > 0),
CONSTRAINT CHK_OrderDetails_Quantity  CHECK (Quantity > 0),
CONSTRAINT PK_OrderDetails   PRIMARY KEY (Order_ID, Product_ID),
CONSTRAINT FK_OrderDetails_Order    FOREIGN KEY (Order_ID)    REFERENCES Orders(Order_ID),
CONSTRAINT FK_OrderDetails_Product    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

Table created.

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (301, 201, 1, 2499);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (301, 203, 1, 799);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (302, 202, 1, 3999);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (303, 203, 2, 799);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (304, 204, 1, 650);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (304, 205, 1, 850);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (305, 205, 1, 850);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (306, 201, 1, 2499);
INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (306, 202, 1, 3999);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (307, 204, 1, 650);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (307, 205, 1, 850);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (308, 204, 1, 650);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (309, 201, 1, 2499);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (309, 203, 1, 799);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (310, 201, 1, 2499);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (310, 202, 1, 3999);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (310, 205, 2, 850);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (303, 205, 1, 850);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (305, 204, 1, 650);

INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Price)
VALUES (308, 205, 1, 850);
Commit;

DESC Order_Details;
Name        Null?    Type
----------- -------- ----------------
ORDER_ID             NUMBER(5)
PRODUCT_ID           NUMBER(5)
QUANTITY    NOT NULL NUMBER(5)
PRICE       NOT NULL NUMBER(10,2)

SELECT * FROM Order_Details;
ORDER_ID  PRODUCT_ID  QUANTITY  PRICE
--------  ----------  --------  --------
301       201         1         2499
301       203         1          799
302       202         1         3999
303       203         2          799
304       204         1          650
304       205         1          850
305       205         1          850
306       201         1         2499
306       202         1         3999
307       204         1          650
307       205         1          850
308       204         1          650
309       201         1         2499
309       203         1          799
310       201         1         2499
310       202         1         3999
310       205         2          850
303       205         1          850
305       204         1          650
308       205         1          850