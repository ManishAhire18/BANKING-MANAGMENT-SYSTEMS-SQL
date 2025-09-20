SQL> --table for account management system and transation insights case study
SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE Customers (
  2   CustomerID NUMBER PRIMARY KEY,
  3   Name VARCHAR2(10) NOT NULL,
  4   Email VARCHAR2(10) UNIQUE,
  5   Phone VARCHAR2(15) NOT NULL,
  6*  Address VARCHAR2(50))
SQL> ED
Wrote file afiedt.buf

  1  CREATE TABLE Customers (
  2  CustomerID NUMBER PRIMARY KEY,
  3  Name VARCHAR2(10) NOT NULL,
  4  Email VARCHAR2(10) UNIQUE,
  5  Phone VARCHAR2(15) NOT NULL,
  6* Address VARCHAR2(50))
SQL> /

Table created.

SQL> ED
Wrote file afiedt.buf

  1* INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
  2  /
Enter value for customerid: 1
Enter value for name: MANISH
Enter value for email: MANISH@GMAIL.COM
Enter value for phone: 1287301754
Enter value for address: NASHIK
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (1, 'MANISH','MANISH@GMAIL.COM','1287301754','NASHIK')
INSERT INTO Customers VALUES (1, 'MANISH','MANISH@GMAIL.COM','1287301754','NASHIK')
                                          *
ERROR at line 1:
ORA-12899: value too large for column "HR"."CUSTOMERS"."EMAIL" (actual: 16, 
maximum: 10) 


SQL> /
Enter value for customerid: 1
Enter value for name: MANISH
Enter value for email: MANI@G.COM
Enter value for phone: 6537817281
Enter value for address: NASHIK
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (1, 'MANISH','MANI@G.COM','6537817281','NASHIK')

1 row created.

SQL> ALTER TABLE CUSTOMERS MODIFY EMAIL VARCHAR(30)NOT NULL;

Table altered.

SQL> INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address');
Enter value for customerid: 2
Enter value for name: SAI
Enter value for email: SAI12@GMAIL.COM
Enter value for phone: 2618549306
Enter value for address: BHALEWADI PUNE
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (2, 'SAI','SAI12@GMAIL.COM','2618549306','BHALEWADI PUNE')

1 row created.

SQL> /
Enter value for customerid: 3
Enter value for name: DHIRAJ
Enter value for email: DHIRAJ3344@GMAIL.COM
Enter value for phone: 9273561729
Enter value for address: BAGLURU
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (3, 'DHIRAJ','DHIRAJ3344@GMAIL.COM','9273561729','BAGLURU')

1 row created.

SQL> /
Enter value for customerid: 3
Enter value for name: ASHWINI
Enter value for email: ASHWINI@GMAIL.COM
Enter value for phone: 957682037
Enter value for address: NASHIK ROAD NASHIK
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (3, 'ASHWINI','ASHWINI@GMAIL.COM','957682037','NASHIK ROAD NASHIK')
INSERT INTO Customers VALUES (3, 'ASHWINI','ASHWINI@GMAIL.COM','957682037','NASHIK ROAD NASHIK')
*
ERROR at line 1:
ORA-00001: unique constraint (HR.SYS_C007170) violated 


SQL> /
Enter value for customerid: 4
Enter value for name: ASHWINI
Enter value for email: ASHWINI@GMAIL.COM
Enter value for phone: 957682037
Enter value for address: NASHIK ROAD NASHIK
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (4, 'ASHWINI','ASHWINI@GMAIL.COM','957682037','NASHIK ROAD NASHIK')

1 row created.

SQL> /
Enter value for customerid: 5
Enter value for name: RUTURAJ
Enter value for email: RUTUPATIL@GMAIL.COM
Enter value for phone: 927354628
Enter value for address: NAGPUR 
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (5, 'RUTURAJ','RUTUPATIL@GMAIL.COM','927354628','NAGPUR ')

1 row created.

SQL> /
Enter value for customerid: 6
Enter value for name: YOGESH
Enter value for email: YOGESHPATIL@GMAIL.COM
Enter value for phone: 926372892
Enter value for address: SURAT
old   1: INSERT INTO Customers VALUES (&CustomerID, '&Name','&Email','&Phone','&Address')
new   1: INSERT INTO Customers VALUES (6, 'YOGESH','YOGESHPATIL@GMAIL.COM','926372892','SURAT')

1 row created.

SQL> --CREATE ACCOUNTS TABLE
SQL> CREATE TABLE Accounts (
  2   AccountID NUMBER PRIMARY KEY,
  3   CustomerID NUMBER,
  4   AccountType VARCHAR2(20) NOT NULL,
  5   Balance NUMBER DEFAULT 0 CHECK (Balance >= 0),
  6   FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
  7  );

Table created.

SQL> --INSERT VALUE FOR ACCOUNTS TABLE
SQL> ED
Wrote file afiedt.buf

  1* INSERT INTO Accounts ('&AccountID', '&CustomerID', '&AccountType','&Balance')
SQL> /
Enter value for accountid: 100
Enter value for customerid: 2
Enter value for accounttype: SAVING 
Enter value for balance: 24000
old   1: INSERT INTO Accounts ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1: INSERT INTO Accounts ('100', '2', 'SAVING ','24000')
INSERT INTO Accounts ('100', '2', 'SAVING ','24000')
                      *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL>  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance');
Enter value for accountid: 100
Enter value for customerid: 2
Enter value for accounttype: SAVING
Enter value for balance: 24000
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('100', '2', 'SAVING','24000')

1 row created.

SQL> /
Enter value for accountid: 101
Enter value for customerid: 2
Enter value for accounttype: CURRUNT
Enter value for balance: 2300
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('101', '2', 'CURRUNT','2300')

1 row created.

SQL> /
Enter value for accountid: 1
Enter value for customerid: ED
Enter value for accounttype: 
Enter value for balance: 
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('1', 'ED', '','')
 INSERT INTO Accounts VALUES ('1', 'ED', '','')
                                   *
ERROR at line 1:
ORA-01722: invalid number 


SQL> 
SQL> /
Enter value for accountid: 102
Enter value for customerid: 1
Enter value for accounttype: SAVING
Enter value for balance: 3500
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('102', '1', 'SAVING','3500')

1 row created.

SQL> /
Enter value for accountid: 103
Enter value for customerid: 3
Enter value for accounttype: CURRUNT
Enter value for balance: 10874
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('103', '3', 'CURRUNT','10874')

1 row created.

SQL> /
Enter value for accountid: 104
Enter value for customerid: 3
Enter value for accounttype: CURRUNT
Enter value for balance: 102674
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('104', '3', 'CURRUNT','102674')

1 row created.

SQL> /
Enter value for accountid: 105
Enter value for customerid: 4
Enter value for accounttype: SAVING 
Enter value for balance: 30283
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('105', '4', 'SAVING ','30283')

1 row created.

SQL> /
Enter value for accountid: 106
Enter value for customerid: 5
Enter value for accounttype: SAVING
Enter value for balance: 342
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('106', '5', 'SAVING','342')

1 row created.

SQL> /
Enter value for accountid: 107
Enter value for customerid: 5
Enter value for accounttype: SAVING
Enter value for balance: 100
old   1:  INSERT INTO Accounts VALUES ('&AccountID', '&CustomerID', '&AccountType','&Balance')
new   1:  INSERT INTO Accounts VALUES ('107', '5', 'SAVING','100')

1 row created.

SQL> --CREATE TRANSACTIONS TABLE
SQL> CREATE TABLE Transactions (
  2  TransactionID NUMBER PRIMARY KEY,
  3  AccountID NUMBER,
  4  tDate DATE NOT NULL,
  5  Amount NUMBER NOT NULL CHECK (Amount >= 0),
  6  TransactionType VARCHAR2(20) NOT NULL,
  7  FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
  8  );

Table created.

SQL> --INSERT VALUE FOR TRANSACTIONS TABLE;
SQL> INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType');
Enter value for transactionid: 1
Enter value for accountid: 101
Enter value for tdate: 18-aug-2022
Enter value for amount: 21929
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('1','101', '18-aug-2022', '21929', 'deposit')

1 row created.

SQL> /
Enter value for transactionid: 2
Enter value for accountid: 100
Enter value for tdate: 11-aug-2022
Enter value for amount: 20384
Enter value for transactiontype: withdraw
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('2','100', '11-aug-2022', '20384', 'withdraw')

1 row created.

SQL> 3
SP2-0226: Invalid line number 
SQL> /
Enter value for transactionid: 3
Enter value for accountid: 100
Enter value for tdate: 12-jan-2025
Enter value for amount: 1287332
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('3','100', '12-jan-2025', '1287332', 'deposit')

1 row created.

SQL> /
Enter value for transactionid: 4
Enter value for accountid: 101
Enter value for tdate: 22-jun-2025
Enter value for amount: 21345
Enter value for transactiontype: withdraw
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('4','101', '22-jun-2025', '21345', 'withdraw')

1 row created.

SQL> /
Enter value for transactionid: 5
Enter value for accountid: 103
Enter value for tdate: 18-feb-2025
Enter value for amount: 12456
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('5','103', '18-feb-2025', '12456', 'deposit')

1 row created.

SQL> /
Enter value for transactionid: 6
Enter value for accountid: 104
Enter value for tdate: 18-feb-2025
Enter value for amount: 1539
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('6','104', '18-feb-2025', '1539', 'deposit')

1 row created.

SQL> /
Enter value for transactionid: 7
Enter value for accountid: 102
Enter value for tdate: 18-feb-2025
Enter value for amount: 12343
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('7','102', '18-feb-2025', '12343', 'deposit')

1 row created.

SQL> 8
SP2-0226: Invalid line number 
SQL> /
Enter value for transactionid: 8
Enter value for accountid: 104
Enter value for tdate: 16-jun-2025
Enter value for amount: 23413
Enter value for transactiontype: withdraw
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('8','104', '16-jun-2025', '23413', 'withdraw')

1 row created.

SQL> /
Enter value for transactionid: 9
Enter value for accountid: 106
Enter value for tdate: 28-may-2024
Enter value for amount: 28340
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('9','106', '28-may-2024', '28340', 'deposit')

1 row created.

SQL> 10
SP2-0226: Invalid line number 
SQL> /
Enter value for transactionid: 10
Enter value for accountid: 106
Enter value for tdate: 18-mar-2024
Enter value for amount: 1234
Enter value for transactiontype: deposit
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('10','106', '18-mar-2024', '1234', 'deposit')

1 row created.

SQL> /11
Enter value for transactionid: 11
Enter value for accountid: 107
Enter value for tdate: 24-feb-2022
Enter value for amount: 8927369
Enter value for transactiontype: withdraw
old   1: INSERT INTO Transactions values ('&TransactionID','&AccountID', '&tDate', '&Amount', '&TransactionType')
new   1: INSERT INTO Transactions values ('11','107', '24-feb-2022', '8927369', 'withdraw')

1 row created.

SQL> --show all table
SQL> select * from customers;

CUSTOMERID NAME       EMAIL                          PHONE                      
---------- ---------- ------------------------------ ---------------            
ADDRESS                                                                         
--------------------------------------------------                              
         1 MANISH     MANI@G.COM                     6537817281                 
NASHIK                                                                          
                                                                                
         2 SAI        SAI12@GMAIL.COM                2618549306                 
BHALEWADI PUNE                                                                  
                                                                                
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729                 
BAGLURU                                                                         
                                                                                

CUSTOMERID NAME       EMAIL                          PHONE                      
---------- ---------- ------------------------------ ---------------            
ADDRESS                                                                         
--------------------------------------------------                              
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037                  
NASHIK ROAD NASHIK                                                              
                                                                                
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628                  
NAGPUR                                                                          
                                                                                
         6 YOGESH     YOGESHPATIL@GMAIL.COM          926372892                  
SURAT                                                                           
                                                                                

6 rows selected.

SQL> set pagesize 200
SQL> set linesize 200
SQL> /

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         1 MANISH     MANI@G.COM                     6537817281      NASHIK                                                                                                                             
         2 SAI        SAI12@GMAIL.COM                2618549306      BHALEWADI PUNE                                                                                                                     
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             
         6 YOGESH     YOGESHPATIL@GMAIL.COM          926372892       SURAT                                                                                                                              

6 rows selected.

SQL> select* from accounts;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       100          2 SAVING                    24000                                                                                                                                                   
       101          2 CURRUNT                    2300                                                                                                                                                   
       102          1 SAVING                     3500                                                                                                                                                   
       103          3 CURRUNT                   10874                                                                                                                                                   
       104          3 CURRUNT                  102674                                                                                                                                                   
       105          4 SAVING                    30283                                                                                                                                                   
       106          5 SAVING                      342                                                                                                                                                   
       107          5 SAVING                      100                                                                                                                                                   

8 rows selected.

SQL> select * from transctions;
select * from transctions
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1        101 18-AUG-22      21929 deposit                                                                                                                                                   
            2        100 11-AUG-22      20384 withdraw                                                                                                                                                  
            3        100 12-JAN-25    1287332 deposit                                                                                                                                                   
            4        101 22-JUN-25      21345 withdraw                                                                                                                                                  
            5        103 18-FEB-25      12456 deposit                                                                                                                                                   
            6        104 18-FEB-25       1539 deposit                                                                                                                                                   
            7        102 18-FEB-25      12343 deposit                                                                                                                                                   
            8        104 16-JUN-25      23413 withdraw                                                                                                                                                  
            9        106 28-MAY-24      28340 deposit                                                                                                                                                   
           10        106 18-MAR-24       1234 deposit                                                                                                                                                   
           11        107 24-FEB-22    8927369 withdraw                                                                                                                                                  

11 rows selected.

SQL> --Write a query to retrieve the Name and Email of all customers from the Customers table.
SQL> select name ,email from customers;

NAME       EMAIL                                                                                                                                                                                        
---------- ------------------------------                                                                                                                                                               
MANISH     MANI@G.COM                                                                                                                                                                                   
SAI        SAI12@GMAIL.COM                                                                                                                                                                              
DHIRAJ     DHIRAJ3344@GMAIL.COM                                                                                                                                                                         
ASHWINI    ASHWINI@GMAIL.COM                                                                                                                                                                            
RUTURAJ    RUTUPATIL@GMAIL.COM                                                                                                                                                                          
YOGESH     YOGESHPATIL@GMAIL.COM                                                                                                                                                                        

6 rows selected.

SQL> --Write a query to fetch AccountID and Balance from the Accounts table.
SQL> select accountid,balance from account;
select accountid,balance from account
                              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select accountid,balance from accounts;

 ACCOUNTID    BALANCE                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       100      24000                                                                                                                                                                                   
       101       2300                                                                                                                                                                                   
       102       3500                                                                                                                                                                                   
       103      10874                                                                                                                                                                                   
       104     102674                                                                                                                                                                                   
       105      30283                                                                                                                                                                                   
       106        342                                                                                                                                                                                   
       107        100                                                                                                                                                                                   

8 rows selected.

SQL> --Write a query to retrieve all columns from the Transactions table.
SQL> select* from transactions;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1        101 18-AUG-22      21929 deposit                                                                                                                                                   
            2        100 11-AUG-22      20384 withdraw                                                                                                                                                  
            3        100 12-JAN-25    1287332 deposit                                                                                                                                                   
            4        101 22-JUN-25      21345 withdraw                                                                                                                                                  
            5        103 18-FEB-25      12456 deposit                                                                                                                                                   
            6        104 18-FEB-25       1539 deposit                                                                                                                                                   
            7        102 18-FEB-25      12343 deposit                                                                                                                                                   
            8        104 16-JUN-25      23413 withdraw                                                                                                                                                  
            9        106 28-MAY-24      28340 deposit                                                                                                                                                   
           10        106 18-MAR-24       1234 deposit                                                                                                                                                   
           11        107 24-FEB-22    8927369 withdraw                                                                                                                                                  

11 rows selected.

SQL> --Write a query to fetch the CustomerID, Name, and Email of customers.
SQL> select customerid,name,email from customers;

CUSTOMERID NAME       EMAIL                                                                                                                                                                             
---------- ---------- ------------------------------                                                                                                                                                    
         1 MANISH     MANI@G.COM                                                                                                                                                                        
         2 SAI        SAI12@GMAIL.COM                                                                                                                                                                   
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM                                                                                                                                                              
         4 ASHWINI    ASHWINI@GMAIL.COM                                                                                                                                                                 
         5 RUTURAJ    RUTUPATIL@GMAIL.COM                                                                                                                                                               
         6 YOGESH     YOGESHPATIL@GMAIL.COM                                                                                                                                                             

6 rows selected.

SQL> --Write a query to retrieve all columns from the Customers table.
SQL> select * from customers;

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         1 MANISH     MANI@G.COM                     6537817281      NASHIK                                                                                                                             
         2 SAI        SAI12@GMAIL.COM                2618549306      BHALEWADI PUNE                                                                                                                     
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             
         6 YOGESH     YOGESHPATIL@GMAIL.COM          926372892       SURAT                                                                                                                              

6 rows selected.

SQL> --Write a query to retrieve all columns from the Transactions table where the transaction amount is greater than 500.
SQL> select * from transactions where amount>500;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1        101 18-AUG-22      21929 deposit                                                                                                                                                   
            2        100 11-AUG-22      20384 withdraw                                                                                                                                                  
            3        100 12-JAN-25    1287332 deposit                                                                                                                                                   
            4        101 22-JUN-25      21345 withdraw                                                                                                                                                  
            5        103 18-FEB-25      12456 deposit                                                                                                                                                   
            6        104 18-FEB-25       1539 deposit                                                                                                                                                   
            7        102 18-FEB-25      12343 deposit                                                                                                                                                   
            8        104 16-JUN-25      23413 withdraw                                                                                                                                                  
            9        106 28-MAY-24      28340 deposit                                                                                                                                                   
           10        106 18-MAR-24       1234 deposit                                                                                                                                                   
           11        107 24-FEB-22    8927369 withdraw                                                                                                                                                  

11 rows selected.

SQL> --Write a query to fetch all customer records without using
SQL> select costomerid,name,email,phone,address from customers;
select costomerid,name,email,phone,address from customers
       *
ERROR at line 1:
ORA-00904: "COSTOMERID": invalid identifier 


SQL> select CUSTOMERID,name,email,phone,address from customers;

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         1 MANISH     MANI@G.COM                     6537817281      NASHIK                                                                                                                             
         2 SAI        SAI12@GMAIL.COM                2618549306      BHALEWADI PUNE                                                                                                                     
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             
         6 YOGESH     YOGESHPATIL@GMAIL.COM          926372892       SURAT                                                                                                                              

6 rows selected.

SQL> --Write a query to retrieve all transaction details for a specific AccountID (e.g., 101).
SQL> SELECT * FROM TRANSACTIONS WHERE ACCOUNTID= 101;

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1        101 18-AUG-22      21929 deposit                                                                                                                                                   
            4        101 22-JUN-25      21345 withdraw                                                                                                                                                  

SQL> --Write a query to find customers who are active (assuming IsActive = 1 exists in the Customers table).
SQL> SELECT * FROM Customers WHERE IsActive = 1;
SELECT * FROM Customers WHERE IsActive = 1
                              *
ERROR at line 1:
ORA-00904: "ISACTIVE": invalid identifier 


SQL> SELECT * FROM Customers WHERE Is Active = 1;
SELECT * FROM Customers WHERE Is Active = 1
                              *
ERROR at line 1:
ORA-00936: missing expression 


SQL> Write a query to retrieve the details of customers whose Name starts with 'J'.
SP2-0734: unknown command beginning "Write a qu..." - rest of line ignored.
SQL> --Write a query to retrieve the details of customers whose Name starts with 'J'.
SQL> SELECT * FROM CUSTOMERS WHERE LIKE 'J%'
  2  /
SELECT * FROM CUSTOMERS WHERE LIKE 'J%'
                              *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'J%'
  2  /

no rows selected

SQL> --Write a query to retrieve the details of customers whose Name starts with 'A'.
SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'A%';

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 

SQL> --Write a query to fetch customers who have an email address that contains "gmail.com".
SQL> SELECT * FROM CUSTOMERS WHERE GMAIL LIKE 'GMAIL.COM';
SELECT * FROM CUSTOMERS WHERE GMAIL LIKE 'GMAIL.COM'
                              *
ERROR at line 1:
ORA-00904: "GMAIL": invalid identifier 


SQL> SELECT * FROM CUSTOMERS WHERE GMAIL LIKE '%GMAIL.COM';
SELECT * FROM CUSTOMERS WHERE GMAIL LIKE '%GMAIL.COM'
                              *
ERROR at line 1:
ORA-00904: "GMAIL": invalid identifier 


SQL> SELECT * FROM CUSTOMERS WHERE EMAIL LIKE '%GMAIL.COM';

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         2 SAI        SAI12@GMAIL.COM                2618549306      BHALEWADI PUNE                                                                                                                     
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             
         6 YOGESH     YOGESHPATIL@GMAIL.COM          926372892       SURAT                                                                                                                              

SQL> --Write a query to list all transactions for the month of January 2024 (assuming tDate column exists in the Transactions table).
SQL> SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE(01-01-2024,'DD-MM-YYYY')AND TO_DATE(31-01-2024,'DD-MM-YYYY');
SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE(01-01-2024,'DD-MM-YYYY')AND TO_DATE(31-01-2024,'DD-MM-YYYY')
                                                            *
ERROR at line 1:
ORA-01847: day of month must be between 1 and last day of month 


SQL> SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE(01-JAN-2024,'DD-MON-YYYY')AND TO_DATE(31-JAN-2024,'DD-MON-YYYY');
SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE(01-JAN-2024,'DD-MON-YYYY')AND TO_DATE(31-JAN-2024,'DD-MON-YYYY')
                                                                                                *
ERROR at line 1:
ORA-00904: "JAN": invalid identifier 


SQL> SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE('01-JAN-2024','DD-MON-YYYY')AND TO_DATE('31-JAN-2024','DD-MON-YYYY');

no rows selected

SQL> --Write a query to list all transactions for the month of JUN 2025 (assuming tDate column exists in the Transactions table).
SQL> SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE('01-JUN-2025','DD-MON-YYYY')AND TO_DATE('31-JUN-2025','DD-MON-YYYY');
SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE('01-JUN-2025','DD-MON-YYYY')AND TO_DATE('31-JUN-2025','DD-MON-YYYY')
                                                                                               *
ERROR at line 1:
ORA-01839: date not valid for month specified 


SQL> SELECT * FROM TRANSACTIONS WHERE TDATE BETWEEN TO_DATE('01-JUN-2025','DD-MON-YYYY')AND TO_DATE('30-JUN-2025','DD-MON-YYYY');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            4        101 22-JUN-25      21345 withdraw                                                                                                                                                  
            8        104 16-JUN-25      23413 withdraw                                                                                                                                                  

SQL> --Write a query to find all accounts with a balance less than 500.
SQL> SELECT * FROM ACCOUNTS WHERE BALANCE <500;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       106          5 SAVING                      342                                                                                                                                                   
       107          5 SAVING                      100                                                                                                                                                   

SQL> --Write a query to retrieve customers whose Phone number contains '927'.
SQL> SELECT * FROM CUSTOMERS WHERE PHONE LIKE '%927%';

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             

SQL> --Write a query to find all customers who have an address starting with 'Pune'.
SQL> SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE PUNE
  2  
SQL> 
SQL> 
SQL> SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE 'PUNE%';

no rows selected

SQL> --Write a query to find all customers who have an address starting with 'NASHIK'.
SQL> SELECT * FROM CUSTOMERS WHERE ADDRESS LIKE 'NASHIK%';

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         1 MANISH     MANI@G.COM                     6537817281      NASHIK                                                                                                                             
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 

SQL> --Write a query to list all transactions for a specific TransactionType (e.g., 'Deposit').
SQL> SELECT * FROM TRANSACTIONS WHERE TRANSACTIONTYPE= 'DEPOSIT';

no rows selected

SQL> SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)=UPPER('DEPOSIT');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1        101 18-AUG-22      21929 deposit                                                                                                                                                   
            3        100 12-JAN-25    1287332 deposit                                                                                                                                                   
            5        103 18-FEB-25      12456 deposit                                                                                                                                                   
            6        104 18-FEB-25       1539 deposit                                                                                                                                                   
            7        102 18-FEB-25      12343 deposit                                                                                                                                                   
            9        106 28-MAY-24      28340 deposit                                                                                                                                                   
           10        106 18-MAR-24       1234 deposit                                                                                                                                                   

7 rows selected.

SQL> --Write a query that will return all transactions whose TransactionType is 'Deposit' or 'Withdrawal'.
SQL> SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)=UPPER('DEPOSIT') OR UPPER(TRANSACTIONTYPE)=UPPER(WITHDRAW');
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)=UPPER('DEPOSIT','WITHDRAW');
SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)=UPPER('DEPOSIT','WITHDRAW')
                                                        *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)=UPPER(('DEPOSIT','WITHDRAW'));
SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)=UPPER(('DEPOSIT','WITHDRAW'))
                                                                        *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT * FROM Transactions
  2  WHERE TransactionType IN ('deposit', 'withdraw');

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            1        101 18-AUG-22      21929 deposit                                                                                                                                                   
            2        100 11-AUG-22      20384 withdraw                                                                                                                                                  
            3        100 12-JAN-25    1287332 deposit                                                                                                                                                   
            4        101 22-JUN-25      21345 withdraw                                                                                                                                                  
            5        103 18-FEB-25      12456 deposit                                                                                                                                                   
            6        104 18-FEB-25       1539 deposit                                                                                                                                                   
            7        102 18-FEB-25      12343 deposit                                                                                                                                                   
            8        104 16-JUN-25      23413 withdraw                                                                                                                                                  
            9        106 28-MAY-24      28340 deposit                                                                                                                                                   
           10        106 18-MAR-24       1234 deposit                                                                                                                                                   
           11        107 24-FEB-22    8927369 withdraw                                                                                                                                                  

11 rows selected.

SQL> SELECT * FROM TRANSACTIONS WHERE UPPER(TRANSACTIONTYPE)IN UPPER('DEPOSIT') OR UPPER(TRANSACTIONTYPE)IN UPPER(WITHDRAW');
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> --Write a query that will list customers whose account type is either 'Savings' or 'CURRUNT'.
SQL> SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN UPPER('SAVING','CURRUNT') );
SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN UPPER('SAVING','CURRUNT') )
                                                                                                  *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN UPPER(('SAVING','CURRUNT')) );
SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN UPPER(('SAVING','CURRUNT')) )
                                                                                                                 *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN LOWER('SAVING','CURRUNT') );
SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN LOWER('SAVING','CURRUNT') )
                                                                                                  *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN(SELECT CUSTOMERID  FROM ACCOUNTS WHERE ACCOUNTTYPE IN('SAVING','CURRUNT') );

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         1 MANISH     MANI@G.COM                     6537817281      NASHIK                                                                                                                             
         2 SAI        SAI12@GMAIL.COM                2618549306      BHALEWADI PUNE                                                                                                                     
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             

SQL> --Write a query to fetch all those transactions in which AccountID is either 102 or 104 or 106.
SQL> SELECT * FROM TRANSACTIONS WHERE ACCOUNTID IN(102,104,106);

TRANSACTIONID  ACCOUNTID TDATE         AMOUNT TRANSACTIONTYPE                                                                                                                                           
------------- ---------- --------- ---------- --------------------                                                                                                                                      
            6        104 18-FEB-25       1539 deposit                                                                                                                                                   
            7        102 18-FEB-25      12343 deposit                                                                                                                                                   
            8        104 16-JUN-25      23413 withdraw                                                                                                                                                  
            9        106 28-MAY-24      28340 deposit                                                                                                                                                   
           10        106 18-MAR-24       1234 deposit                                                                                                                                                   

SQL> --Write a SQL query to retrieve all accounts whose Balance is in the range of 1000 to 5000.
SQL> SELECT * FROM ACCOUNTS WHERE BALANCE BETWEEN 1000 AND 5000;

 ACCOUNTID CUSTOMERID ACCOUNTTYPE             BALANCE                                                                                                                                                   
---------- ---------- -------------------- ----------                                                                                                                                                   
       101          2 CURRUNT                    2300                                                                                                                                                   
       102          1 SAVING                     3500                                                                                                                                                   

SQL> --Find all customers who do not provide a phone number, such as Phone is NULL.
SQL> SELECT 8 FROM CUSTOMERS WHERE PHONE IS NULL;

no rows selected

SQL> UPDATE CUSTOMERS SET PHONE='NULL'
  2  WHERE COSTOMERID =6;
WHERE COSTOMERID =6
      *
ERROR at line 2:
ORA-00904: "COSTOMERID": invalid identifier 


SQL> UPDATE CUSTOMERS SET PHONE='NULL'
  2  WHERE CUSTOMERID =6;

1 row updated.

SQL> SELECT * FROM CUSTOMERS;

CUSTOMERID NAME       EMAIL                          PHONE           ADDRESS                                                                                                                            
---------- ---------- ------------------------------ --------------- --------------------------------------------------                                                                                 
         1 MANISH     MANI@G.COM                     6537817281      NASHIK                                                                                                                             
         2 SAI        SAI12@GMAIL.COM                2618549306      BHALEWADI PUNE                                                                                                                     
         3 DHIRAJ     DHIRAJ3344@GMAIL.COM           9273561729      BAGLURU                                                                                                                            
         4 ASHWINI    ASHWINI@GMAIL.COM              957682037       NASHIK ROAD NASHIK                                                                                                                 
         5 RUTURAJ    RUTUPATIL@GMAIL.COM            927354628       NAGPUR                                                                                                                             
         6 YOGESH     YOGESHPATIL@GMAIL.COM          NULL            SURAT                                                                                                                              

6 rows selected.

SQL> SELECT 8 FROM CUSTOMERS WHERE PHONE IS NULL;

no rows selected

SQL> UPDATE CUSTOMERS SET PHONE=''
  2  SELECT * FROM CUSTOMERS;
SELECT * FROM CUSTOMERS
*
ERROR at line 2:
ORA-00933: SQL command not properly ended 


SQL> UPDATE CUSTOMERS SET PHONE=
  2  WHERE CUSTOMERID =6;
WHERE CUSTOMERID =6
*
ERROR at line 2:
ORA-00936: missing expression 


SQL> SPOOL OFF
SQL> --write a query to return all transactions where the amount is null,if possible in your database.
SQL> select * from transactions where amount is null;

no rows selected

SQL> --write a query to find customers who have not provided their address
SQL> select * from customers where address is null;

no rows selected

SQL>  --write a query that retrieves accountid,and balance from the accounts table using a case  statement to display 'low balance' if balance is less than 1000 or high balance otherwise
SQL> desc account
ERROR:
ORA-04043: object account does not exist 


SQL> desc accounts
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ACCOUNTID                                 NOT NULL NUMBER
 CUSTOMERID                                         NUMBER
 ACCOUNTTYPE                               NOT NULL VARCHAR2(20)
 BALANCE                                            NUMBER

SQL> select accountid,customerid,balance where balance <1000;
select accountid,customerid,balance where balance <1000
                                    *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select accountid,customerid,balance from accounts where balance <1000;

 ACCOUNTID CUSTOMERID    BALANCE                                                
---------- ---------- ----------                                                
       106          5        342                                                
       107          5        100                                                

SQL>  --write a query that display the transactiontype along with a label high transaction if amount is greater than 1000, and low transaction if it s less than or equal to 1000
SQL> desc transaction if it s less than or equal to 1000.
Usage: DESCRIBE [schema.]object[@db_link]
SQL> desc transactions
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TRANSACTIONID                             NOT NULL NUMBER
 ACCOUNTID                                          NUMBER
 TDATE                                     NOT NULL DATE
 AMOUNT                                    NOT NULL NUMBER
 TRANSACTIONTYPE                           NOT NULL VARCHAR2(20)

SQL> select transactiontype from transactions where amount>1000;

no rows selected

SQL> select transactiontype from transactions where amount>100;

no rows selected

SQL> select transactiontype from transactions where amount>100;

no rows selected

SQL> select * from transactions;

no rows selected

SQL> select * from transaction;
select * from transaction
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from transactions1;
select * from transactions1
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
ACCOUNTS                       TABLE                                            
AHIRE                          TABLE                                            
BIN$1MngqoLUQJKuDZ7EJKIY4A==$0 TABLE                                            
BIN$6h1T47Z/QqKjuPBPtoNPjA==$0 TABLE                                            
BIN$7Gup8y80QHufjy+c/wHZmA==$0 TABLE                                            
BIN$AEbcTVI8SLO0Kmb3Fml4Pw==$0 TABLE                                            
BIN$MsUVAPFVQCiHZySPsDLubw==$0 TABLE                                            
BIN$PY0pLUN1S8GHKo0cHOcr5Q==$0 TABLE                                            
BIN$UbVSOEhJR3qBFiahtSMhGQ==$0 TABLE                                            
BIN$YZjomSWnTgqmaLHuyqi2Fw==$0 TABLE                                            
BIN$g2Rs7/Z9Tbmxg46t9VUt0Q==$0 TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BIN$gzcb5OyAQNaB0w/ltQJOBA==$0 TABLE                                            
BONUS                          TABLE                                            
COUNTRIES                      TABLE                                            
CUSTOMER                       TABLE                                            
CUSTOMERS                      TABLE                                            
DEPARTMENT                     TABLE                                            
DEPARTMENTS                    TABLE                                            
DEPT1                          TABLE                                            
EMP                            TABLE                                            
EMP1                           TABLE                                            
EMP1234                        TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
EMP2                           TABLE                                            
EMPLIST                        TABLE                                            
EMPLOYEES                      TABLE                                            
EMP_DETAILS_VIEW               VIEW                                             
JOBS                           TABLE                                            
JOB_HISTORY                    TABLE                                            
LOCATIONS                      TABLE                                            
MANISH                         TABLE                                            
MANISH12                       TABLE                                            
MAYCOPY                        TABLE                                            
MAYTABLE                       TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
ORDCPY                         TABLE                                            
ORDER_DETAIL                   TABLE                                            
PRODUCT                        TABLE                                            
PRODUCT1                       TABLE                                            
PRODUCT12                      TABLE                                            
REGIONS                        TABLE                                            
SALARY                         TABLE                                            
SALARY2                        TABLE                                            
STUDANT                        TABLE                                            
STUDENT2                       TABLE                                            
TBL                            TABLE                                            

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
TRANSACTIONS                   TABLE                                            
VIDYARTHI                      TABLE                                            
WORKER                         TABLE                                            
WORKER1                        TABLE                                            

48 rows selected.

SQL>  --write a query that display the balance along with a label high transaction if amount is greater than 1000, and low accounts if it s less than or equal to 1000
SQL> select balance accounts where balance>1000;
select balance accounts where balance>1000
                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select balance from accounts where balance>1000;

   BALANCE                                                                      
----------                                                                      
     24000                                                                      
      2300                                                                      
      3500                                                                      
     10874                                                                      
    102674                                                                      
     30283                                                                      

6 rows selected.

SQL> spool off
