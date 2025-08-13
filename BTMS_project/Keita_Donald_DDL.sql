
set echo on;

--------------------------------------------------------------------------------
----------- 1. Dropping all tables ---------------------------------------------
DROP TABLE operation;
DROP TABLE employee;
DROP TABLE branch;
DROP TABLE transaction;
DROP TABLE account;
DROP TABLE customer;

-- Dropping all sequence
DROP SEQUENCE seq_emp_id;
DROP SEQUENCE seq_br_id;
DROP SEQUENCE seq_transc_id;
DROP SEQUENCE seq_acct_id;
DROP SEQUENCE seq_cust_id;

--------------------------------------------------------------------------------
------------- 2. Create tables for banking system ---------------------------------
CREATE TABLE customer
( cust_id NUMBER(10) NOT NULL,
  f_name VARCHAR2(50) NOT NULL,
  l_name VARCHAR2(50) NOT NULL,
  dob DATE NOT NULL,
  address VARCHAR2(100) NOT NULL,
  ph_number CHAR(10) NOT NULL,
  email VARCHAR2(50) NOT NULL,
  CONSTRAINT customer_pk PRIMARY KEY (cust_id)
);

CREATE TABLE account 
( account_id NUMBER(10) NOT NULL,
  balance DECIMAL(38,2) CHECK (balance >= 0) NOT NULL,
  acct_type VARCHAR2(50) CHECK (acct_type IN ('Savings', 'Checking', 'Loan')) NOT NULL,
  creat_date DATE NOT NULL,
  status VARCHAR2(50) NOT NULL,
  fk_customer_cust_id NUMBER(10),
  CONSTRAINT account_pk PRIMARY KEY (account_id),
  CONSTRAINT fk_customer FOREIGN KEY (fk_customer_cust_id)
    REFERENCES customer(cust_id) ON DELETE CASCADE
);

CREATE TABLE transaction
( transc_id NUMBER(10) NOT NULL,
  amount DECIMAL(38,2) NOT NULL,
  transc_type varchar2(50) CHECK (transc_type IN ('Deposit', 'Withdrawal', 'Transfer')) NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  description VARCHAR2(200) NOT NULL,
  fk_account_account_id NUMBER(10) NOT NULL,
  CONSTRAINT transaction_pk PRIMARY KEY (transc_id),
  CONSTRAINT fk_account FOREIGN KEY (fk_account_account_id) REFERENCES account(account_id) ON DELETE CASCADE
);

CREATE TABLE branch
( br_id NUMBER(10) NOT NULL,
  br_name VARCHAR2(50) NOT NULL,
  location VARCHAR2(50) NOT NULL,
  mgr_name VARCHAR2(50) NOT NULL,
  ph_number CHAR(10) NOT NULL,
  est_date DATE,
  CONSTRAINT branch_pk PRIMARY KEY (br_id)
);

CREATE TABLE operation
( date_created TIMESTAMP NOT NULL,
  created_by varchar2(50) NOT NULL,
  channel VARCHAR(50) NOT NULL,
  appr_code VARCHAR2(50) NULL,
  op_status VARCHAR2(50) NOT NULL,
  fk_branch_br_id NUMBER(10) NOT NULL,
  fk_transaction_transc_id NUMBER(10) NOT NULL,
  CONSTRAINT operation_pk PRIMARY KEY (fk_branch_br_id, fk_transaction_transc_id),
  CONSTRAINT fk_branch_par FOREIGN KEY (fk_branch_br_id) REFERENCES branch(br_id) ON DELETE CASCADE,
  CONSTRAINT fk_transaction FOREIGN KEY (fk_transaction_transc_id) REFERENCES transaction(transc_id)  ON DELETE CASCADE
);

CREATE TABLE employee
( emp_id NUMBER(10) NOT NULL,
  f_name VARCHAR2(50) NOT NULL,
  l_name VARCHAR2(50) NOT NULL,
  email VARCHAR2(50) NOT NULL,
  position VARCHAR2(50) NOT NULL,
  hired_date DATE NOT NULL,
  fk_branch_br_id NUMBER(10),
  CONSTRAINT employee_pk PRIMARY KEY (emp_id),
  CONSTRAINT fk_branch FOREIGN KEY (fk_branch_br_id) REFERENCES branch(br_id)
  ON DELETE CASCADE
);


--------------------------------------------------------------------------------
----- 3. Create indexes for possible natural key, foreign key columns and others

-- Create unique index on natural key columns.
CREATE UNIQUE INDEX idx_emp_fname_lname ON employee(f_name, l_name); 
CREATE UNIQUE INDEX idx_cust_fname_lname ON customer(f_name, l_name);
-- Create index on foreign key columns. 
CREATE INDEX idx_acct_cust_id ON account(fk_customer_cust_id); 
CREATE INDEX idx_transc_acct_id ON transaction(fk_account_account_id);
CREATE INDEX idx_op_transc_id ON operation(fk_transaction_transc_id);
CREATE INDEX idx_op_br_id ON operation(fk_branch_br_id);
CREATE INDEX idx_emp_br_id ON employee(fk_branch_br_id);
-- Create index on other columns that will be frequently used as query filters
CREATE INDEX idx_balance ON account(balance); 
CREATE INDEX idx_transc_type ON transaction(transc_type);
CREATE INDEX idx_op_created_by ON operation(created_by);


---------------------------------------------------------------------------------
----- 4. Create views that are appropriate to support business requirements -----
/*
Business purpose: This view simplifies access to all accounts that are currently active. It is useful for operational dashboards and reporting
*/
-- View showing all accounts with 'Active' status
CREATE OR REPLACE VIEW view_active_acct AS
  SELECT account_id, fk_customer_cust_id, acct_type, balance, creat_date
  FROM account
  Where status = 'Active';
    
/*
Business purpose: This view provides a consolidated report of the customer details and the sum of all their account balances. 
                  It is useful for customer and financial analysis
*/
-- This view combines customer details with their account balances
CREATE OR REPLACE VIEW view_cust_acct_summary AS
  SELECT c.cust_id, c.f_name, c.l_name, c.email, c.ph_number, NVL(SUM(a.balance), 0) AS total_balance
  FROM customer c LEFT JOIN account a ON c.cust_id = a.fk_customer_cust_id
  GROUP BY c.cust_id, c.f_name, c.l_name, c.email, c.ph_number;
  
  /*
  Business purpose: This view provides crucial information about each branch. It will help allocate resources proportional
                    Also, it is useful to further understand the causes of frequentation to make better decision.
  */
-- This view consist to know the frequentation of each branch by customers
CREATE OR REPLACE VIEW view_br_performance AS
  SELECT t.location, t.br_name, t.channel, COUNT(t.location) AS number_of_frequention
  FROM (
    SELECT b.location, b.br_name, o.channel
    FROM branch b INNER JOIN operation o ON b.br_id = o.fk_branch_br_id
    WHERE o.channel IN ('Teller', 'ATM')) t
  GROUP BY t.location, t.br_name, t.channel;

  
------------------------------------------------------------------------------------
----- 5. Create sequences for the primary keys created in each entities ------------

-- Generate values for cust_id (primary key of customer entity) through sequence
CREATE SEQUENCE seq_cust_id
  MINVALUE 1
  MAXVALUE 100
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

-- Generate values for br_id (primary key of branch entity) through sequence
CREATE SEQUENCE seq_br_id
  MINVALUE 101
  MAXVALUE 200
  START WITH 101
  INCREMENT BY 1
  CACHE 20;

-- Generate values for emp_id (primary key of employee entity) through sequence
CREATE SEQUENCE seq_emp_id
  MINVALUE 201
  MAXVALUE 400
  START WITH 201
  INCREMENT BY 1
  CACHE 20;

-- Generate values for account_id (primary key of account entity) through sequence
CREATE SEQUENCE seq_acct_id
  MINVALUE 401
  MAXVALUE 600
  START WITH 401
  INCREMENT BY 1
  CACHE 20;

-- Generate values for transc_id (primary key transaction entity) through sequence
CREATE SEQUENCE seq_transc_id
  MINVALUE 601
  MAXVALUE 800
  START WITH 601
  INCREMENT BY 1
  CACHE 20;


------------------------------------------------------------------------------------
----- 6. Create triggers ----------------------------------------------------------
CREATE OR REPLACE TRIGGER trigger_cust_id
BEFORE INSERT ON customer
FOR EACH ROW
BEGIN
  IF :NEW.cust_id IS NULL THEN
    :NEW.cust_id := seq_cust_id.NEXTVAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER trigger_acct_id
BEFORE INSERT ON account
FOR EACH ROW
BEGIN
  IF :NEW.account_id IS NULL THEN
    :NEW.account_id := seq_acct_id.NEXTVAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER trigger_emp_id
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
  IF :NEW.emp_id IS NULL THEN
    :NEW.emp_id := seq_emp_id.NEXTVAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER trigger_br_id
BEFORE INSERT ON branch
FOR EACH ROW
BEGIN
  IF :NEW.br_id IS NULL THEN
    :NEW.br_id := seq_br_id.NEXTVAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER trigger_transc_id
BEFORE INSERT ON transaction
FOR EACH ROW
BEGIN
  IF :NEW.transc_id IS NULL THEN
    :NEW.transc_id := seq_transc_id.NEXTVAL;
  END IF;
END;
/

/* The business value of this trigger is to ensure auditability for transaction records.
-- It automatically logs the staff who performed the transaction and when, helping meet compliance and tracking requirements.
*/
CREATE OR REPLACE TRIGGER trg_operation_audit
BEFORE INSERT ON operation
FOR EACH ROW
BEGIN
  :NEW.date_created := CAST(SYSDATE AS TIMESTAMP);
END;
/

/* The business value of this trigger is to ensure auditability of when the customer initiates the transaction.
   It also ensures that the bank meet compliance and tracking requirements.
*/
CREATE OR REPLACE TRIGGER trg_transaction_audit
BEFORE INSERT ON Transaction
FOR EACH ROW
BEGIN
  :NEW.timestamp := CAST(SYSDATE AS TIMESTAMP);
END;
/


-- To confirm all your tables are present
SELECT TABLE_NAME FROM USER_TABLES;   

-- To check the status and types of all your created objects (valid/invalid)
SELECT OBJECT_NAME, STATUS, CREATED, LAST_DDL_TIME FROM USER_OBJECTS; 




  