SQL> --Retrieve all transactions where the amount is greater than 1000.
SQL> SELECT *
  2  FROM Transactions
  3  WHERE Amount > 1000;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

29 rows selected.

SQL> --2. List all transactions sorted by date in descending order.
SQL> SELECT *
  2  FROM Transactions
  3  ORDER BY tDate DESC;
ORDER BY tDate DESC
         *
ERROR at line 3:
ORA-00904: "TDATE": invalid identifier 


SQL> SELECT *
  2  FROM Transactions
  3  ORDER BY t_Date DESC;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  

30 rows selected.

SQL> --3. Retrieve all deposits and sort them by amount in descending order.
SQL> select * from transactions where transaction_'type=deposit' order by amount desc;
select * from transactions where transaction_'type=deposit' order by amount desc
                                             *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select * from transactions where transaction_type='deposit' order by amount desc;

no rows selected

SQL> select * from transactions where transaction_type='DEPOSIT' order by amount desc;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  

19 rows selected.

SQL> --Retrieve the 5 most recent transactions.
SQL> SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC) WHERE ROWNUM <=5;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  

SQL> -- Sort transactions first by transaction type and then by amount within each type.
SQL> SELECT * FROM TRANSACTIONS ORDER BY TRANSACTION_TYPE ASC,AMOUNT DESC;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               

30 rows selected.

SQL> --Retrieve transactions greater than 1000 that are either deposits or withdrawals.
SQL> SELECT * FROM TRANSACTIONS WHERE AMOUNT>1000 AND TRANSACTION_TYPE='WITHDRAWAL' OR TRANSACTION_TYPE='DEPOSIT';

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

30 rows selected.

SQL> --Retrieve transactions that occurred within the first half of 2023.
SQL> ELECT * FROM Transactions
SP2-0734: unknown command beginning "ELECT * FR..." - rest of line ignored.
SQL> WHERE
SP2-0042: unknown command "WHERE" - rest of line ignored.
SQL> tDate BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD')
SP2-0734: unknown command beginning "tDate BETW..." - rest of line ignored.
SQL> AND
SP2-0042: unknown command "AND" - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> TO_DATE('2023-06-30', 'YYYY-MM-DD');
SP2-0734: unknown command beginning "TO_DATE('2..." - rest of line ignored.
SQL> 
SQL> 
SQL> SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN_TO_DATE('01-01-2023,'DD-MM-YYYY') AND TO_DATE (31-12-2023,DD-MM-YYYY);
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN_TO_DATE('01-01-2023','DD-MM-YYYY') AND TO_DATE ('31-12-2023',DD-MM-YYYY);
SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN_TO_DATE('01-01-2023','DD-MM-YYYY') AND TO_DATE ('31-12-2023',DD-MM-YYYY)
                                        *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN TO_DATE('01-01-2023','DD-MM-YYYY') AND TO_DATE ('31-12-2023',DD-MM-YYYY);
SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN TO_DATE('01-01-2023','DD-MM-YYYY') AND TO_DATE ('31-12-2023',DD-MM-YYYY)
                                                                                                                   *
ERROR at line 1:
ORA-00904: "YYYY": invalid identifier 


SQL> SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN TO_DATE('01-01-2023','DD-MM-YYYY') AND TO_DATE ('31-12-2023','DD-MM-YYYY');

no rows selected

SQL> SELECT * FROM TRANSACTIONS WHERE T_DATE BETWEEN TO_DATE('01-01-2025','DD-MM-YYYY') AND TO_DATE ('31-12-2025','DD-MM-YYYY');

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

30 rows selected.

SQL> --- Retrieve transactions that are either deposits or withdrawals.
SQL> SELECT * FROM TRANSACTIONS WHERE IN('DEPOSIT','WITHDRAWAL')
  2  /
SELECT * FROM TRANSACTIONS WHERE IN('DEPOSIT','WITHDRAWAL')
                                 *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT * FROM TRANSACTIONS WHERE TRANSACTION_TYPE IN('DEPOSIT','WITHDRAWAL')
  2  /

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

30 rows selected.

SQL> --List all customers who do not have an address listed.
SQL> SELECT * FROM CUSTOMERS WHERE ADDRESS IS NULL
  2  /
SELECT * FROM CUSTOMERS WHERE ADDRESS IS NULL
                              *
ERROR at line 1:
ORA-00904: "ADDRESS": invalid identifier 


SQL> SELECT * FROM CUSTOMERS WHERE ADDERESS IS NULL
  2  /

no rows selected

SQL> -- Sort customers by address in ascending order placing NULL values last
SQL> SELECT * FROM CUSTOMERS ORDER BY ADDRESS ASC NULL LAST;
SELECT * FROM CUSTOMERS ORDER BY ADDRESS ASC NULL LAST
                                             *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM CUSTOMERS ORDER BY ADDRESS ASC NULLS LAST;
SELECT * FROM CUSTOMERS ORDER BY ADDRESS ASC NULLS LAST
                                 *
ERROR at line 1:
ORA-00904: "ADDRESS": invalid identifier 


SQL> SELECT * FROM CUSTOMERS ORDER BY ADDERESS ASC NULLS LAST;

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        107 ruturaj              ruturaj@gmail.com                                    11212853 chalisgaon Maharashtra                                                                                   
        106 dhiraj               dhiraj12@gmail.com                                   11213323 chalisgaon Maharashtra                                                                                   
        104 piyush               piyush@gmail.com                                    112435323 jalgaon Maharashtra                                                                                      
        103 sai                  sai1@gmail.com                                     1256435323 mumbai Maharashtra                                                                                       
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       
        109 khushal              khushal1@gmail.com                                   23212853 nagpur Maharashtra                                                                                       
        108 khushi               khushali@gmail.com                                   23212853 nagpur Maharashtra                                                                                       
        105 yogesh               yogesh12@gmail.com                                   11213323 nashik Maharashtra                                                                                       
        100 Manish               manish@gmail.com                                   1237465374 nashik Maharashtra                                                                                       
        101 sahil                sahil@gmail.com                                    1237465323 pune Maharashtra                                                                                         

10 rows selected.

SQL> SELECT * FROM CUSTOMERS ORDER BY ADDERESS ASC NULLS FIRST;

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        107 ruturaj              ruturaj@gmail.com                                    11212853 chalisgaon Maharashtra                                                                                   
        106 dhiraj               dhiraj12@gmail.com                                   11213323 chalisgaon Maharashtra                                                                                   
        104 piyush               piyush@gmail.com                                    112435323 jalgaon Maharashtra                                                                                      
        103 sai                  sai1@gmail.com                                     1256435323 mumbai Maharashtra                                                                                       
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       
        109 khushal              khushal1@gmail.com                                   23212853 nagpur Maharashtra                                                                                       
        108 khushi               khushali@gmail.com                                   23212853 nagpur Maharashtra                                                                                       
        105 yogesh               yogesh12@gmail.com                                   11213323 nashik Maharashtra                                                                                       
        100 Manish               manish@gmail.com                                   1237465374 nashik Maharashtra                                                                                       
        101 sahil                sahil@gmail.com                                    1237465323 pune Maharashtra                                                                                         

10 rows selected.

SQL> --Retrieve the top 5 most recent transactions using the FETCH FIRST clause.
SQL> SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC ROWNUM '5';
SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC ROWNUM '5'
                                                *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)ROWNUM '5';
SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)ROWNUM '5'
                                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC HAVING ROWNUM '5';
SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC HAVING ROWNUM '5'
                                                *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)WHERE ROWNUM '5';
SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)WHERE ROWNUM '5'
                                                                            *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)WHERE ROWNUM 5;
SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)WHERE ROWNUM 5
                                                                            *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC FETCH FIRST 5 ROWS ONLY;
SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC FETCH FIRST 5 ROWS ONLY
                                                *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT * FROM (SELECT * FROM TRANSACTIONS ORDER BY T_DATE DESC)WHERE ROWNUM<=5;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  

SQL> -- Retrieve all customers whose names start with 'J'.
SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE J%
  2  /
SELECT * FROM CUSTOMERS WHERE NAME LIKE J%
                                         *
ERROR at line 1:
ORA-00911: invalid character 


SQL> DESC CUSTOMERS;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 CUSTOMER_ID                                                                                                       NOT NULL NUMBER(38)
 NAME                                                                                                              NOT NULL VARCHAR2(20)
 EMAIL                                                                                                             NOT NULL VARCHAR2(50)
 PHONE                                                                                                             NOT NULL NUMBER(12)
 ADDERESS                                                                                                          NOT NULL VARCHAR2(70)

SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE M%
  2  -- Retrieve all customers whose names start with 'M'.
  3  SELECT * FROM CUSTOMERS WHERE NAME LIKE M%;
SELECT * FROM CUSTOMERS WHERE NAME LIKE M%
                                         *
ERROR at line 1:
ORA-00911: invalid character 


SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'M%';

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        100 Manish               manish@gmail.com                                   1237465374 nashik Maharashtra                                                                                       

SQL> -- Retrieve all customers whose names start with 'J'.
SQL> -- Retrieve all customers whose names start with 'A'.
SQL> -- Retrieve all customers whose names start with 'a'.
SQL> SELECT * FROM CUSTOMERS WHERE LOWER(NAME) LIKE 'a%';

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       

SQL> SELECT * FROM CUSTOMERS WHERE LOWER(NAME) LIKE 'A%';

no rows selected

SQL> SELECT * FROM CUSTOMERS WHERE LOWER(NAME) LIKE lower('A%');

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       

SQL> -- Retrieve all customers whose names do not end with 'Sai'.
SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'sai';

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        103 sai                  sai1@gmail.com                                     1256435323 mumbai Maharashtra                                                                                       

SQL> --Retrieve deposits over 1000 or withdrawals over 500.
SQL> SELECT * FROM transactions where transaction_type='deposit' and amount>1000 or
  2  transaction_type
  3  
SQL> SELECT * FROM transactions where transaction_type='deposit' and amount>1000 or
  2  transaction_type='withdrawal' and ammount >500;
transaction_type='withdrawal' and ammount >500
                                  *
ERROR at line 2:
ORA-00904: "AMMOUNT": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  SELECT * FROM transactions where transaction_type='deposit' and amount>1000 or
  2* transaction_type='withdrawal' and amount >500
SQL> /

no rows selected

SQL> select * from transactions ;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

30 rows selected.

SQL> SELECT * FROM transactions where transaction_type='DEPOSIT' and amount>1000 or
  2  transaction_type='WITHDRAWAL' and ammount >500;
transaction_type='WITHDRAWAL' and ammount >500
                                  *
ERROR at line 2:
ORA-00904: "AMMOUNT": invalid identifier 


SQL> SELECT * FROM transactions where transaction_type='DEPOSIT' and amount>1000 or
  2  transaction_type='withdrawal' and amount >500;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

18 rows selected.

SQL> --Retrieve transactions that are not deposits or withdrawals
SQL> SELECT * FROM transactions where transaction_type NOT IN('WITHDRAWAL','DEPOSIT');

no rows selected

SQL> --Sort transactions by a calculated column.
SQL> SELECT *,AMOUNT *2 AS ADJ_AMOUNT FROM TRANSACTIONS;
SELECT *,AMOUNT *2 AS ADJ_AMOUNT FROM TRANSACTIONS
        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT AMOUNT *2 AS ADJ_AMOUNT FROM TRANSACTIONS;

ADJ_AMOUNT                                                                                                                                                                                              
----------                                                                                                                                                                                              
     10000                                                                                                                                                                                              
      4000                                                                                                                                                                                              
      3000                                                                                                                                                                                              
     16000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
     20000                                                                                                                                                                                              
      8000                                                                                                                                                                                              
      5000                                                                                                                                                                                              
     14000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
     18000                                                                                                                                                                                              
     10000                                                                                                                                                                                              
      5000                                                                                                                                                                                              
      2000                                                                                                                                                                                              
     24000                                                                                                                                                                                              
      8000                                                                                                                                                                                              
     12000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
      4000                                                                                                                                                                                              
     16000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
      9000                                                                                                                                                                                              
      4000                                                                                                                                                                                              
     10000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
     14000                                                                                                                                                                                              
      8000                                                                                                                                                                                              
     18000                                                                                                                                                                                              
      3000                                                                                                                                                                                              
     12000                                                                                                                                                                                              

30 rows selected.

SQL> SELECT AMOUNT *2 AS ADJ_AMOUNT FROM TRANSACTIONS ORDER BY ADJ_AMOUNT DESC;

ADJ_AMOUNT                                                                                                                                                                                              
----------                                                                                                                                                                                              
     24000                                                                                                                                                                                              
     20000                                                                                                                                                                                              
     18000                                                                                                                                                                                              
     18000                                                                                                                                                                                              
     16000                                                                                                                                                                                              
     16000                                                                                                                                                                                              
     14000                                                                                                                                                                                              
     14000                                                                                                                                                                                              
     12000                                                                                                                                                                                              
     12000                                                                                                                                                                                              
     10000                                                                                                                                                                                              
     10000                                                                                                                                                                                              
     10000                                                                                                                                                                                              
      9000                                                                                                                                                                                              
      8000                                                                                                                                                                                              
      8000                                                                                                                                                                                              
      8000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
      5000                                                                                                                                                                                              
      5000                                                                                                                                                                                              
      4000                                                                                                                                                                                              
      4000                                                                                                                                                                                              
      4000                                                                                                                                                                                              
      3000                                                                                                                                                                                              
      3000                                                                                                                                                                                              
      2000                                                                                                                                                                                              

30 rows selected.

SQL> --Retrieve customers whose names contain the letter 'a'.
SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE '%A%';

no rows selected

SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE '%a%';

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        100 Manish               manish@gmail.com                                   1237465374 nashik Maharashtra                                                                                       
        101 sahil                sahil@gmail.com                                    1237465323 pune Maharashtra                                                                                         
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       
        103 sai                  sai1@gmail.com                                     1256435323 mumbai Maharashtra                                                                                       
        106 dhiraj               dhiraj12@gmail.com                                   11213323 chalisgaon Maharashtra                                                                                   
        107 ruturaj              ruturaj@gmail.com                                    11212853 chalisgaon Maharashtra                                                                                   
        109 khushal              khushal1@gmail.com                                   23212853 nagpur Maharashtra                                                                                       

7 rows selected.

SQL> SELECT * FROM TRANSACTIONS;

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2001       1001 01-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2003       1003 02-SEP-25       1500 DEPOSIT                                                                                                                                                  
          2004       1004 03-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2006       1006 04-SEP-25      10000 DEPOSIT                                                                                                                                                  
          2007       1007 04-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2009       1009 06-SEP-25       7000 DEPOSIT                                                                                                                                                  
          2010       1010 07-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2011       1011 07-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2012       1012 08-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2014       1014 09-SEP-25       1000 DEPOSIT                                                                                                                                                  
          2015       1015 10-SEP-25      12000 DEPOSIT                                                                                                                                                  
          2016       1016 11-SEP-25       4000 WITHDRAWAL                                                                                                                                               
          2017       1017 11-SEP-25       6000 DEPOSIT                                                                                                                                                  
          2018       1018 12-SEP-25       3500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2020       1020 13-SEP-25       8000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2022       1002 15-SEP-25       4500 DEPOSIT                                                                                                                                                  
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2024       1004 16-SEP-25       5000 DEPOSIT                                                                                                                                                  
          2025       1005 17-SEP-25       3500 DEPOSIT                                                                                                                                                  
          2026       1006 17-SEP-25       7000 WITHDRAWAL                                                                                                                                               
          2027       1007 18-SEP-25       4000 DEPOSIT                                                                                                                                                  
          2028       1008 19-SEP-25       9000 DEPOSIT                                                                                                                                                  
          2029       1009 19-SEP-25       1500 WITHDRAWAL                                                                                                                                               
          2030       1010 20-SEP-25       6000 DEPOSIT                                                                                                                                                  

30 rows selected.

SQL> SELECT TRANSACTION_TYPE,COUNT(*) AS TOTAL FROM TRANSACTIONS GROUP BY TRANSACTION_TYPE ORDER BY COUNT(*)DESC;

TRANSACTION_TYPE          TOTAL                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
DEPOSIT                      19                                                                                                                                                                         
WITHDRAWAL                   11                                                                                                                                                                         

SQL> --Retrieve customers whose names do not contain the letter 'e'.
SQL> SELECT * FROM CUSTOMERS WHERE NAME IS NOT LIKE '%E%'
  2  /
SELECT * FROM CUSTOMERS WHERE NAME IS NOT LIKE '%E%'
                                          *
ERROR at line 1:
ORA-00908: missing NULL keyword 


SQL> SELECT * FROM CUSTOMERS WHERE NAME  NOT LIKE '%E%'
  2  /

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        100 Manish               manish@gmail.com                                   1237465374 nashik Maharashtra                                                                                       
        101 sahil                sahil@gmail.com                                    1237465323 pune Maharashtra                                                                                         
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       
        103 sai                  sai1@gmail.com                                     1256435323 mumbai Maharashtra                                                                                       
        104 piyush               piyush@gmail.com                                    112435323 jalgaon Maharashtra                                                                                      
        105 yogesh               yogesh12@gmail.com                                   11213323 nashik Maharashtra                                                                                       
        106 dhiraj               dhiraj12@gmail.com                                   11213323 chalisgaon Maharashtra                                                                                   
        107 ruturaj              ruturaj@gmail.com                                    11212853 chalisgaon Maharashtra                                                                                   
        108 khushi               khushali@gmail.com                                   23212853 nagpur Maharashtra                                                                                       
        109 khushal              khushal1@gmail.com                                   23212853 nagpur Maharashtra                                                                                       

10 rows selected.

SQL> --Retrieve all customers with a balance greater than or equal to 500, and order them by balance in descending order.
SQL> SELECT *
  2  FROM Accounts
  3  WHERE Balance >= 500
  4  ORDER BY Balance DESC;

ACCOUNT_ID CUSTOMER_ID    BALANCE ACCOUNTTYPE                                                                                                                                                           
---------- ----------- ---------- --------------------                                                                                                                                                  
      1019         108      51000 SAVINGS                                                                                                                                                               
      1015         104      45000 SAVINGS                                                                                                                                                               
      1008         107      40000 SAVINGS                                                                                                                                                               
      1017         106      38000 SAVINGS                                                                                                                                                               
      1007         106      35000 CURRENT                                                                                                                                                               
      1012         101      32000 CURRENT                                                                                                                                                               
      1004         103      30000 CURRENT                                                                                                                                                               
      1018         107      29000 CURRENT                                                                                                                                                               
      1006         105      27000 SAVINGS                                                                                                                                                               
      1013         102      27000 SAVINGS                                                                                                                                                               
      1002         101      25000 CURRENT                                                                                                                                                               
      1020         109      22000 CURRENT                                                                                                                                                               
      1005         104      22000 SAVINGS                                                                                                                                                               
      1003         102      18000 SAVINGS                                                                                                                                                               
      1011         100      18000 SAVINGS                                                                                                                                                               
      1014         103      15000 CURRENT                                                                                                                                                               
      1001         100      15000 SAVINGS                                                                                                                                                               
      1010         109      12000 SAVINGS                                                                                                                                                               
      1016         105       6000 CURRENT                                                                                                                                                               
      1009         108       5000 CURRENT                                                                                                                                                               
         1         101       2000                                                                                                                                                                       

21 rows selected.

SQL> --Retrieve transactions with an amount between 2000 and 3000 and sort them by date.
SQL> SELECT * FROM TRANSACTIONS WHERE AMOUNT  BETWEEN 2000 AND 3000 ORDER BY T_DATE
  2  /

TRANSACTION_ID ACCOUNT_ID T_DATE        AMOUNT TRANSACTION_TYPE                                                                                                                                         
-------------- ---------- --------- ---------- --------------------                                                                                                                                     
          2002       1002 02-SEP-25       2000 WITHDRAWAL                                                                                                                                               
          2005       1005 03-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2008       1008 05-SEP-25       2500 DEPOSIT                                                                                                                                                  
          2013       1013 08-SEP-25       2500 WITHDRAWAL                                                                                                                                               
          2019       1019 12-SEP-25       2000 DEPOSIT                                                                                                                                                  
          2021       1001 14-SEP-25       3000 WITHDRAWAL                                                                                                                                               
          2023       1003 15-SEP-25       2000 WITHDRAWAL                                                                                                                                               

7 rows selected.

SQL> --Retrieve all customers whose names start with the letter 'A' and order them by name.
SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'A%' ORDER BY NAME;

no rows selected

SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'a%' ORDER BY NAME;

CUSTOMER_ID NAME                 EMAIL                                                   PHONE ADDERESS                                                                                                 
----------- -------------------- -------------------------------------------------- ---------- ----------------------------------------------------------------------                                   
        102 ashwini              ashwini@gmail.com                                  1457465323 mumbai Maharashtra                                                                                       

SQL> spool off
