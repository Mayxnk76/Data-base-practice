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


Student Practice Questions:
Customer Table

Q1. Display the details of all customers.

SQL> select * from customer;

Q2. Display the name, email and city of all customers who live in Ahmedabad.

SQL> select customer_name,email,city from customer where city='Ahmedabad';

Q3. Display all customers whose gender is female.

SQL> select * from customer where gender = 'F';

Q4. Display the details of customers who are from either Ahmedabad or Surat.

SQL> select * from customer where city in('Ahmedabad','Surat');

Q5. Display customers who are not from Ahmedabad.

SQL> select * from customer where city <> 'Ahmedabad';

Q6. Display customers whose names start with the letter R.

SQL> select * from customer where customer_name like'R%';

Q7. Display customers whose names end with the letter a.

SQL> select * from customer where customer_name like'%a';

Q8. Display customers whose names contain the letter e.

SQL> select * from customer where customer_name like'%e%';

Q9. Display customers whose names have exactly 4 characters.

SQL> select * from customer where customer_name like'____';

Q10. Display all customers in alphabetical order of their names.

SQL> select * from customer order by customer_name asc;

Category Table:
Q11. Display all categories in descending order of category name.

SQL> select * from category order by category_name desc;

Q12. Display categories whose names are either Electronics or Books.

SQL> select * from category where category_name in ('Electronics','Books');

Q13. Display categories whose names are not Clothing.

SQL> select * from category where category_name<>'Clothing';

Q14. Display categories whose names start with the letter E.

SQL> select * from category where category_name like'E%';

Q15. Display categories whose names contain the letter o.

SQL> select * from category where category_name like'%o%';

Product Table:
Q16. Display all products having a price greater than 1000.

SQL> select * from product where price > 1000;

Q17. Display product name, price and brand for products having price less than or equal to 1000.

SQL> select product_name,price,brand from product where price <= 1000;

Q18. Display products whose price is between 500 and 3000.

SQL> select * from product where price between 500 and 3000;

Q19. Display products whose price is not between 500 and 3000.

SQL> select * from product where price not between 500 and 3000;

Q20. Display products belonging to category 1 or category 3.

SQL> select * from product where category_id in (1,3);

Q21. Display products whose category is not 2.

SQL> select * from product where category_id<>2;

Q22. Display products having stock greater than 40 and price less than 3000.

SQL> select * from product where stock > 40 and price < 3000;

Q23. Display products having stock less than 40 or price greater than 3000.

SQL> select * from product where stock < 40 and price > 3000;

Q24. Display products whose names start with the letter S.

SQL> select * from product where product_name like'S%';

Q25. Display products whose names contain the word Book.

SQL> select * from product where product_name like'%Book%';

Q26. Display all products in increasing order of price.

SQL> select * from product order by price asc;

Q27. Display all products in decreasing order of stock.

SQL> select * from product order by stock desc;

Orders Table:

Q28. Display all orders having UPI as the payment mode.

SQL> select * from orders where payment_mode = 'UPI';

Q29. Display orders whose status is either Pending or Confirmed, and arrange them in increasing order of Total_Amount.

SQL> select * from orders where status in ('Pending','Confirmed') order by total_amount asc;

Q30. Display orders having a total amount greater than 2000 and whose payment mode is not Cash. Arrange the result in descending order of total amount.

SQL> select * from orders where total_amount > 2000 and payment_mode <> 'Cash' order by total_amount desc;
