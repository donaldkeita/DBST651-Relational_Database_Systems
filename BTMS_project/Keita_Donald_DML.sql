
set echo on;

-- DML- SQL INSERT statement that populate CUSTOMER table withn sample data. CUSTOMER data consists of 10 rows.
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Alicia', 'Mills', TO_DATE('1991-05-24', 'YYYY-MM-DD'), '19 Garden Ave, Austin', '5125551001', 'alicia.mills@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Brian', 'Tucker', TO_DATE('1988-11-07', 'YYYY-MM-DD'), '82 Ridge Rd, Denver', '3035554521', 'brian.tucker@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Clara', 'Nguyen', TO_DATE('1995-02-16', 'YYYY-MM-DD'), '34 Willow St, Seattle', '2065553122', 'clara.nguyen@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Derek', 'Ford', TO_DATE('1990-09-12', 'YYYY-MM-DD'), '106 Main Blvd, Miami', '7865559982', 'derek.ford@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Ella', 'Brown', TO_DATE('1986-03-04', 'YYYY-MM-DD'), '501 Pacific St, Portland', '5035557411', 'ella.brown@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Frank', 'Lopez', TO_DATE('1993-07-19', 'YYYY-MM-DD'), '212 Walnut Ln, Chicago', '7735552188', 'frank.lopez@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Grace', 'Kim', TO_DATE('1989-12-02', 'YYYY-MM-DD'), '45 Sunset Ave, LA', '2135553011', 'grace.kim@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Henry', 'Singh', TO_DATE('1992-06-28', 'YYYY-MM-DD'), '87 Liberty St, Boston', '6175559003', 'henry.singh@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Isla', 'Patel', TO_DATE('1994-08-10', 'YYYY-MM-DD'), '15 Beacon Way, New York', '7185556020', 'isla.patel@example.com');
INSERT INTO CUSTOMER (f_name, l_name, dob, address, ph_number, email) VALUES ('Jack', 'Davis', TO_DATE('1996-10-05', 'YYYY-MM-DD'), '68 Pine Circle, Dallas', '2145557777', 'jack.davis@example.com');

-- DML- SQL INSERT statement that populate ACCOUNT table withn sample data. ACCOUNT data consists of 25 rows.
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (2300.50, 'Savings', TO_DATE('2022-01-10', 'YYYY-MM-DD'), 'Active', 1);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (150.75, 'Checking', TO_DATE('2022-03-22', 'YYYY-MM-DD'), 'Active', 2);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (6700.00, 'Loan', TO_DATE('2021-09-05', 'YYYY-MM-DD'), 'Closed', 3);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (980.20, 'Savings', TO_DATE('2022-07-13', 'YYYY-MM-DD'), 'Active', 4);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (3120.00, 'Checking', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Active', 5);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (4900.00, 'Loan', TO_DATE('2021-12-15', 'YYYY-MM-DD'), 'Delinquent', 6);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (1125.35, 'Savings', TO_DATE('2022-04-22', 'YYYY-MM-DD'), 'Active', 7);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (305.60, 'Checking', TO_DATE('2022-08-09', 'YYYY-MM-DD'), 'Frozen', 8);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (15000.00, 'Loan', TO_DATE('2021-06-21', 'YYYY-MM-DD'), 'Active', 9);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (220.10, 'Savings', TO_DATE('2023-03-11', 'YYYY-MM-DD'), 'Active', 10);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (705.90, 'Checking', TO_DATE('2022-02-28', 'YYYY-MM-DD'), 'Active', 1);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (9900.00, 'Loan', TO_DATE('2022-05-15', 'YYYY-MM-DD'), 'Active', 2);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (650.00, 'Savings', TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Active', 3);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (120.00, 'Checking', TO_DATE('2022-09-01', 'YYYY-MM-DD'), 'Frozen', 4);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (4200.00, 'Loan', TO_DATE('2021-03-03', 'YYYY-MM-DD'), 'Closed', 5);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (1580.30, 'Savings', TO_DATE('2023-04-12', 'YYYY-MM-DD'), 'Active', 2);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (875.40, 'Checking', TO_DATE('2022-10-05', 'YYYY-MM-DD'), 'Active', 4);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (2400.00, 'Loan', TO_DATE('2020-12-01', 'YYYY-MM-DD'), 'Active', 6);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (130.20, 'Savings', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'Active', 8);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (395.90, 'Checking', TO_DATE('2021-08-30', 'YYYY-MM-DD'), 'Closed', 9);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (7600.00, 'Loan', TO_DATE('2023-05-23', 'YYYY-MM-DD'), 'Active', 10);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (999.99, 'Savings', TO_DATE('2022-11-18', 'YYYY-MM-DD'), 'Active', 2);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (543.21, 'Checking', TO_DATE('2023-02-14', 'YYYY-MM-DD'), 'Frozen', 3);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (8200.00, 'Loan', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'Delinquent', 5);
INSERT INTO ACCOUNT (balance, acct_type, creat_date, status, fk_customer_cust_id) VALUES (510.00, 'Savings', TO_DATE('2023-08-08', 'YYYY-MM-DD'), 'Active', 1);

-- DML- SQL INSERT statement that populate TRANSACTION table withn sample data. TRANSACTION data consists of 15 rows.
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (200.00, 'Deposit', 'Initial deposit', 401);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES(100.00, 'Withdrawal', 'ATM withdrawal', 402);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (300.00, 'Transfer', 'Transfer to savings', 403);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (50.00, 'Withdrawal', 'POS Purchase', 404);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (1000.00, 'Deposit', 'Salary', 405);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (25.00, 'Withdrawal', 'ATM fee', 403);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (500.00, 'Deposit', 'Freelance payment', 407);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (75.00, 'Transfer', 'Transfer to friend', 408);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (120.00, 'Deposit', 'Cash deposit', 403);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (200.00, 'Withdrawal', 'Bill payment', 410);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (500.00, 'Deposit', 'Initial deposit', 415);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (150.00, 'Withdrawal', 'ATM withdrawal', 423);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (300.00, 'Transfer', 'Transfer to savings', 420);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (75.00, 'Withdrawal', 'POS purchase', 423);
INSERT INTO TRANSACTION (amount, transc_type, description, fk_account_account_id) VALUES (600.00, 'Transfer', 'Loan repayment', 425);

-- DML- SQL INSERT statement that populate BRANCH table withn sample data. BRANCH data consists of 10 rows.
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Downtown', 'New York', 'Alice Miles', '2125551010', TO_DATE('2010-01-01','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Midtown', 'Chicago', 'Brian Lee', '3125551020', TO_DATE('2012-05-15','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Uptown', 'Houston', 'Carla Yu', '7135551030', TO_DATE('2014-03-20','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Central', 'Los Angeles', 'David Singh', '2135551040', TO_DATE('2011-08-10','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Westside', 'San Diego', 'Eva Knight', '6195551050', TO_DATE('2013-09-01','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Southpoint', 'Miami', 'Fred Owen', '3055551060', TO_DATE('2015-10-12','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Riverside', 'Denver', 'Grace Patel', '3035551070', TO_DATE('2016-07-21','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Northend', 'Seattle', 'Henry Kim', '2065551080', TO_DATE('2018-02-14','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Eastside', 'Atlanta', 'Isla Brown', '4045551090', TO_DATE('2017-04-25','YYYY-MM-DD'));
INSERT INTO BRANCH (br_name, location, mgr_name, ph_number, est_date) VALUES ('Metro', 'Boston', 'Jack Chen', '6175551100', TO_DATE('2019-12-31','YYYY-MM-DD'));

-- DML- SQL INSERT statement that populate EMPLOYEE table withn sample data. EMPLOYEE data consists of 10 rows.
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Angela', 'White', 'awhite@example.com', 'Teller', TO_DATE('2018-04-01','YYYY-MM-DD'), 101);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES('Ben', 'King', 'bking@example.com', 'Manager', TO_DATE('2017-03-15','YYYY-MM-DD'), 102);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Chris', 'Davis', 'cdavis@example.com', 'Clerk', TO_DATE('2019-06-22','YYYY-MM-DD'), 103);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Diana', 'Morris', 'dmorris@example.com', 'Security', TO_DATE('2020-01-10','YYYY-MM-DD'), 104);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Ethan', 'Scott', 'escott@example.com', 'Teller', TO_DATE('2016-08-12','YYYY-MM-DD'), 105);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Fiona', 'Hill', 'fhill@example.com', 'Clerk', TO_DATE('2015-02-27','YYYY-MM-DD'), 106);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('George', 'Young', 'gyoung@example.com', 'Manager', TO_DATE('2014-11-03','YYYY-MM-DD'), 107);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Hannah', 'Green', 'hgreen@example.com', 'Clerk', TO_DATE('2021-05-18','YYYY-MM-DD'), 108);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Ian', 'Lopez', 'ilopez@example.com', 'Teller', TO_DATE('2013-09-09','YYYY-MM-DD'), 109);
INSERT INTO EMPLOYEE (f_name, l_name, email, position, hired_date, fk_branch_br_id) VALUES ('Judy', 'Turner', 'jturner@example.com', 'Manager', TO_DATE('2012-12-12','YYYY-MM-DD'), 110);

-- DML- SQL INSERT statement that populate OPERATION table withn sample data. OPERATION data consists of 20 rows.
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Angela White', 'Teller', 'AP123', 'Approved', 101, 601); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Ben King', 'ATM', 'AP124', 'Completed', 102, 602); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Chris Davis', 'Online', 'AP125', 'Approved', 103, 603); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Diana Morris', 'Teller', 'AP126', 'Rejected', 104, 604); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Ethan Scott', 'ATM', 'AP127', 'Approved', 105, 605); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Fiona Hill', 'Online', 'AP128', 'Approved', 106, 606); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('George Young', 'Teller', 'AP129', 'Completed', 107, 607); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Hannah Green', 'ATM', 'AP130', 'Approved', 108, 608); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Ian Lopez', 'Online', 'AP131', 'Approved', 109, 609); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Judy Turner', 'Teller', 'AP132', 'Pending', 110, 610); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Angela White', 'ATM', 'AP133', 'Approved', 101, 611); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Ben King', 'Online', 'AP134', 'Completed', 102, 612);
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Chris Davis', 'Teller', 'AP135', 'Approved', 103, 613); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Diana Morris', 'ATM', 'AP136', 'Completed', 104, 614);
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Ethan Scott', 'Online', 'AP137', 'Approved', 105, 615); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Fiona Hill', 'Teller', 'AP138', 'Rejected', 106, 601); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('George Young', 'ATM', 'AP139', 'Pending', 107, 602); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Hannah Green', 'Online', 'AP140', 'Completed', 108, 603); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Ian Lopez', 'Teller', 'AP141', 'Approved', 109, 604); --
INSERT INTO OPERATION (created_by, channel, appr_code, op_status, fk_branch_br_id, fk_transaction_transc_id) VALUES ('Judy Turner', 'ATM', 'AP142', 'Approved', 110, 605); --

commit;

/*
20 SQL Queries : 12 Basic, 8 Advanced
*/
-- Query 1: select all columns and all rows from one table 
-- Business purpose: this query selects all information about all customers
select * from customer;

-- Query 2: Select five columns and all rows from one table
-- Business purpose: this query selects all information from five attributes about all branch
select br_name as "Branch Name", location as "Location", mgr_name as "Manager Name", ph_number as "Phone Number", est_date as "Establishment Date" from branch;

--Query 3: Select all columns from all rows from one view 
-- Business purpose: this selects all information about a created view called view_active_acct
select * from view_active_acct;

--Query 4: Using a join on 2 tables, select all columns and all rows from the tables without the use of a Cartesian product 
-- Business purpose: this query joins all information from two table where there is a matching value on the customer id
select * from customer c inner join account a on c.cust_id = a.fk_customer_cust_id;

--Query 5: Select and order data retrieved from one table 
-- Business purpose: this query select all information of all employee in ascending order based on employee name
select * from employee order by f_name, l_name asc;

--Query 6: Using a join on 3 tables, select 5 columns from the 3 tables. Use syntax that would limit the output to 10 rows
-- Business purpose: this query joins information of attributes from customer, account and transaction limited to five attributes each and the first ten rows.
select c.f_name as first_name, c.l_name as last_name, c.address, c.ph_number as phone_number, c.email, 
       a.account_id as account_number, a.balance, a.acct_type as account_type, a.creat_date as creation_date, a.status,
       t.transc_id as transaction_number, t.amount, t.transc_type as transaction_type, t.timestamp, t.description
from 
    customer c join account a on c.cust_id = a.fk_customer_cust_id join transaction t on a.account_id = t.fk_account_account_id
    fetch first 10 rows only;

--Query 7: Select distinct rows using joins on 3 tables 
-- Business purpose: select all distinct information from branches, employees, operation after joining them.
select distinct *
from branch b join employee e on b.br_id = e.fk_branch_br_id join operation o on b.br_id = o.fk_branch_br_id;

--Query 8: Use GROUP BY and HAVING in a select statement using one or more tables 
-- Business purpose: select all information from accounts that are grouped by account type where the totals by per account type is greater than 1000.00
select acct_type as account_type, sum(balance) as total_balance from account group by acct_type having sum(balance) > 1000.00;

--Query 9: Use IN clause to select data from one or more tables 
-- Business purpose: select all information of three attributes after joining accounts and transactions.
select a.balance, a.acct_type as account_type, a.status, t.amount, t.transc_type as transaction_type, t.description
from account a join transaction t on a.account_id = t.fk_account_account_id 
where transc_type in ('Deposit', 'Withdrawal');

--Query 10: Select length of one column from one table (use LENGTH function) 
-- Business purpose: this query calculates the length of the name of employees who execute transactions.
select length(created_by) as name_length from operation;

--Query 11: Delete one record from one table. Use select statements to demonstrate the table contents before and after the DELETE statement. 
-- Make sure you use ROLLBACK afterwards so that the data will not be physically removed
-- Business purpose: this query delete a record of information from customer data, then rollback the deleted record.
select * from customer;
delete from customer where cust_id = 1;
select * from customer;
rollback;

--Query 12: Update one record from one table. Use select statements to demonstrate the table contents before and after the UPDATE statement. 
-- Make sure you use ROLLBACK afterwards so that the data will not be physically removed 
-- Business purpose: this query changes the first name and last name of the record that has cutomer id set to 1 from customer data, then rollback to initial values.
select * from customer;
update customer set f_name = 'Donald', l_name = 'Keita' where cust_id = 2;
select * from customer;
rollback;

--Perform 8 Additional Advanced Queries 

-- Query 13: use GROUP BY count the number of branch in each location from view called "view_br_performance"
-- Business purpose: this query computes the number of branch by location from already created view, "view_br_performance"
select location, count(br_name) as "BRANCHES PER LOCATION" from view_br_performance group by location ;

-- Query 14: use GROUP BY to show the number transaction per customer
-- Business purpose: this query compute the number of transaction carried out by customer
select c.f_name as "First Name", c.l_name as "Last Name", count(transc_id) as "Number of Transaction"
from customer c join account a on c.cust_id = a.fk_customer_cust_id join transaction t on a.account_id = t.fk_account_account_id
group by c.f_name, c.l_name;

-- Query 15:show the five active account that were lastly created ORDER BY and FIRST n ROWS ONLY 
-- Business purpose: this query select the last five created account that are still active
select account_id as "Account number", creat_date as "Creation Date", status as "Status" 
from account where status = 'Active' order by creat_date desc fetch first 5 rows only;

-- Query 16: Show the five first customers who two account by using JOIN and operator NOT IN.
-- Business purpose: this query show information about customer who have both Checking and Savings accounts
select c.f_name || ' ' || c.l_name as "Customer Name", account_id as "Account number", a.acct_type as "Account Type"
from customer c join account a on c.cust_id = a.fk_customer_cust_id
where a.acct_type not in ('Loan');
    
-- Query 17: use JOIN and HAVING to aggregate the total amount of transaction per account.
-- Business purpose: this query the total amount of transaction per account with a total of more $500.
select a.account_id, sum(t.amount)
from account a join transaction t on a.account_id = t.fk_account_account_id
group by a.account_id having sum(t.amount) > 500;

-- Query 18: use LEFT JOIN to show all information all transaction and those done at branch
-- Business purpose: this script show transaction information along with the one that
select tp.fk_account_account_id as "ACCOUNT NUMBER", tp.amount, tp.description, tp.channel
from 
    (select t.fk_account_account_id, t.amount, t.description, o.channel
    from transaction t left join operation o on t.transc_id = o.fk_transaction_transc_id
    where o.channel in ('ATM', 'Teller')) tp;

-- Query 19: use SUBQUERY to show the name and location who carried out operations that have "Rejected" status
-- Business purpose:this query select employees that assisted customers resulting in rejected operations and the locations and branches where they work
select e.f_name as "First Name", e.l_name as "Last Name",
    (select b.location 
     from branch b 
     where b.br_id = e.fk_branch_br_id) as "Branch Location"
from employee e
where e.f_name || ' ' || e.l_name in (
        select o.created_by
        from operation o
        where o.op_status = 'Rejected'
    );

-- Query 20: use JOIN Customer, Account, Transaction and Operation tables to show customers who carried out operation where 
--           transaction_type is "Withdrawal" and channel is "ATM"
-- Business purpose: this query select all customers that withdraw money from ATM machines
select c.f_name || ' ' || c.l_name as "Customer Name", t.transc_type as "Transaction Type", o.channel as "Channel", t.amount as "Amount"
from customer c join account a on c.cust_id = a.fk_customer_cust_id join transaction t on a.account_id = t.fk_account_account_id
     join operation o on t.transc_id = o.fk_transaction_transc_id
where t.transc_type = 'Withdrawal' and o.channel = 'ATM';
    
    
