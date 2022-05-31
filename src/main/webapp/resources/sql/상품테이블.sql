CREATE TABLE PRODUCT (
   productId VARCHAR2(20) PRIMARY KEY,
   pname VARCHAR2(100) NOT NULL,
   unitPrice NUMBER(8) NOT NULL,
   description VARCHAR2(2000) NOT NULL,
   manufacturer VARCHAR2(20) NOT NULL,
   category VARCHAR2(20) NOT NULL,
   unitsInStock NUMBER(4) NOT NULL,
   condition VARCHAR2(20) NOT NULL,
   filename VARCHAR2(200)
);

INSERT INTO product (productId,pname,unitprice,description,manufacturer,category,unitsInStock,condition,filename)
VALUES ('P0001','cap',100000,'T1 모자','korea','goods',100,'new','cap.jpg');
INSERT INTO product (productId,pname,unitprice,description,manufacturer,category,unitsInStock,condition,filename)
VALUES ('P0002','Thoodie',100000,'T1 후드티','korea','goods',100,'new','hoodie.png');
INSERT INTO product (productId,pname,unitprice,description,manufacturer,category,unitsInStock,condition,filename)
VALUES ('P0003','membership',100000,'T1 멤버십','korea','goods',100,'new','membership.jpg');

SELECT * FROM PRODUCT;

 