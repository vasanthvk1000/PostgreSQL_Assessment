-----------------------------------------First table--------------------------------------------------------------------------

CREATE TABLE Customer (
    ID INT PRIMARY KEY,
    Customer_FName VARCHAR(50),
    Customer_Lname VARCHAR(50)
);
INSERT INTO Customer (ID, Customer_FName, Customer_Lname)
VALUES
    (10001, 'John', 'Smith'),
    (10002, 'Dave', 'Franklin'),
    (10003, 'Febby', 'Johns'),
    (10004, 'Mary', 'Gibson'),
    (10005, 'Glory', 'Anson');
    
  select * from Customer

  
  select CONCAT(customer_fName, customer_lname ) AS FullName FROM Customer;

   CREATE TABLE Buying (
   Customer_ID INT,
   Product_ID INT,
    Order_Time TIMESTAMP
);

INSERT INTO Buying (Customer_ID, Product_ID, Order_Time)
VALUES
   (10001,772, '2016/09/01'),
    (10002,774, '2015/08/02'),
    (10003,775, '2017/04/15'),
    (10004,712, '2016/09/28'),
   (10005,772, '2019/07/05');
    
 select * FROM Buying

CREATE TABLE Product (
   ID INT PRIMARY KEY,
   Name VARCHAR(100),
   Address VARCHAR(255)
);

INSERT INTO Product (ID, Name, Address)
VALUES
    (772, 'Telephone', '32 Ave,Burwood'),
    (774, 'Movie ', '33 Flower st,Burwood'),
    (775,'Software Pack', '2 garden Rd,Geelong'),
    (712,'Book', '20 Ave ,Burwood');
    
    select * from Product;

select * from customer LIMIT 3;

select * from customer LEFT JOIN buying ON customer.customer_id = buying.customer_id;

select * from buying where customer_id between 10003 and 10005;

select * from product ORDER BY product_id DESC;

select product_id from buying group by product_id;

select cstm.id,cstm.first_name,cstm.last_name,buy.product_id,buy.order_Time
from customer cstm left join buying buy on cstm.id = buy.customer_id;

select * from customer limit 3;

select * from buying where customer_id between 10003 and 10005;

select * from product1 order by ID desc;

select customer_id, product_id, order_Time from buying union 

select pro_id,pro_name, address from product1;

select * from customer where first_name = 'Dave' or first_name = 'Mary';




----------------------------------Second table-------------------------------------------------------------------------------


CREATE TABLE Students (
Stud_id INT PRIMARY KEY,
Stud_Name VARCHAR(100),
Qualification VARCHAR(50),
email VARCHAR(255),
contact VARCHAR(15),
course_id INT ,
Date_of_Joining DATE
    
);
INSERT INTO Students (Stud_id, Stud_Name, Qualification, email, contact, course_id, Date_of_Joining)
VALUES
(1,'Fathima','MCA','fathima@gmail.com',9876543210,1,'2024-02-12'),
(2,'Raveena','Bsc','raveena@gmail.com',8776543219,2,'2024-02-02'),
(3,'Vinoth','Msc','vinoth@gmail.com',8776543210,1,'2024-01-17'),
(4,'Tarun','BCom','tarun@gmail.com',6778976543,3,'2023-09-24'),
(5,'Rajesh','BCom','rajesh@gmail.com',8779023456,3,'2023-08-17'),
(6,'Kalyani','BCom','kalyani@gmail.com',7889012345,3,'2023-10-23'),
(7,'Hemanth','Msc','hemanth@gmail.com',8776543210,1,'2023-11-27');

select * from Students;

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    fees DECIMAL(10, 2),
    duration VARCHAR(50)
);

INSERT INTO course (course_id, course_name, fees, duration) VALUES
(1, 'FSD', 80000, '6 months'),
(2, 'PGA', 125000, '9 months'),
(3, 'Cibop', 90000, '6 months'),
(4, 'Digital marketing',85000, '4 months');

select * from Course;

select MAX(fees) as max_fees FROM course;

select SUM(fees) as total_fees FROM course;

select course_id, course_name, fees, duration FROM course WHERE course_name = 'FSD';

select course_id, course_name, fees, duration FROM course WHERE course_name IN ('FSD', 'PGA');

select s.*, c.course_id, c.course_name FROM student s JOIN course c ON s.course_id = c.course_id;

select * FROM students ORDER BY Stud_id LIMIT 4 OFFSET 3;

select * FROM students WHERE date_of_joining BETWEEN '2023-10-11' AND '2024-02-23';

select * FROM students WHERE Stud_Name LIKE 'R%';