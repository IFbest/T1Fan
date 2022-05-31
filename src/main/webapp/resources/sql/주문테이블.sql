CREATE TABLE productorder (
   cartid VARCHAR2(50) PRIMARY KEY,
   name VARCHAR2(50) NOT NULL,
   memberPost VARCHAR2(5) NOT NULL,
   memberAddr VARCHAR2(200) NOT NULL,
   memberDetail VARCHAR2(200) NOT NULL,
   cardNum VARCHAR2(50) NOT NULL,
   cardDate VARCHAR2(50) NOT NULL,
   cardCVC VARCHAR2(3) NOT NULL
);

SELECT * FROM productorder;
