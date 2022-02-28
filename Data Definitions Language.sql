Data Definitions Language

CREATE TABLE Products(
    ProductID Varchar2(20) PRIMARY KEY,
    ProductName Varchar2(20) NOT NULL,
    price NUMBER  CHECK(price>0)
)
CREATE TABLE Customer(
    CustomerID Varchar2(20) PRIMARY KEY,
    CustomerName Varchar2(20) NOT NULL,
    price NUMBER 
)
CREATE TABLE Orders(
    CustomerID,ProductID Primary Key, 
    CustomerID FOREIGN KEY (CustomerID) references Customer,
    ProductID FOREIGN KEY (ProductID) references Product,
    Quantity  NUMBER,
    Total-amount NUMBER
)

Alter TABLE Products ADD Category Varchar2(20);
Alter Table Orders Add OrderDate(Date) DEFAULT SYSDATE;