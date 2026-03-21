-- Create a new datbase for the tables

CREATE DATABASE  IF NOT EXISTS assignment_db;
USE assignment_db;


-- Create statement table starts from here

CREATE TABLE Customers(
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50)
);
CREATE TABLE Products(
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);
CREATE TABLE Sales_Reps(
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(50) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address VARCHAR(100)
);
CREATE TABLE Orders(
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    order_date DATE,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);
CREATE TABLE Order_Items(
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,

    PRIMARY KEY (order_id, product_id),

    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers VALUES
('C001','Rohan Mehta','rohan@gmail.com','Mumbai'),
('C002','Priya Singh','priya@gmail.com','Delhi'),
('C003','Amit Verma','amit@gmail.com','Bangalore'),
('C004','Sneha Iyer','sneha@gmail.com','Chennai'),
('C005','Vikram Singh','vikram@gmail.com','Mumbai');
INSERT INTO Products VALUES
('P001','Laptop','Electronics',55000),
('P002','Mouse','Electronics',800),
('P003','Desk Chair','Furniture',8500),
('P004','Notebook','Stationery',120),
('P005','Headphones','Electronics',3200);
INSERT INTO Sales_Reps VALUES
('S001','Deepak Joshi','deepak@corp.com','Mumbai HQ, Nariman Point, Mumbai - 400021'),
('S002','Anita Desai','anita@corp.com','Delhi Office, Connaught Place, New Delhi - 110001'),
('S003','Ravi Kumar','ravi@corp.com','South Zone, MG Road, Bangalore - 560001'),
('S004','Sneha Patel','sneha@company.com','Pune Office'),
('S005','Rohit Kapoor','rohit@company.com','Bangalore Office');
INSERT INTO Orders VALUES
('O001','C001','S001','2024-01-10'),
('O002','C002','S002','2024-01-11'),
('O003','C003','S003','2024-01-12'),
('O004','C004','S004','2024-01-13'),
('O005','C005','S005','2024-01-14');
INSERT INTO Order_Items VALUES
('O001','P001',1),
('O001','P002',2),
('O002','P003',1),
('O003','P004',3),
('O004','P005',5);
