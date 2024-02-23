-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  birth_day date NOT NULL,
  sex TEXT NOT NULL,
  salary INTEGER NOT NULL,
  super_id varchar  NOT NULL,
  branch_id INTEGER NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (20, 'Finn', 'Mullar','12-05-67','M',85000,'NULL',1),
(21, 'Lucas', 'Schmidt','12-05-67','M',200000,20,1),
(22, 'Jones', 'Fischer','01-01-83','M',65000,22,2),
(23, 'Ella', 'Weber','01-01-83','F',170000,22,2),
(24, 'Ida', 'Wagner','07-03-70','F',90000,22,2),
(25, 'Ben', 'Schneider','12-05-67','M',72000,22,2),
(26, 'Oliver', 'Brown','02-03-89','M',199000,26,3),
(27, 'Leonie', 'Williams','07-07-77','F',80000,26,3),
(28, 'Lee', 'Zimmerman','05-12-83','F',62000,26,3);


-- fetch 
SELECT * FROM EMPLOYEE;

-------------------------------------------------------------------------------------------------------------------------------------


-- create
CREATE TABLE BRANCH (
  branch_id INTEGER PRIMARY KEY,
  branch_name TEXT NOT NULL,
  mgr_id INTEGER NOT NULL,
  mgr_start_date date NOT NULL

);

-- insert
INSERT INTO BRANCH VALUES (1, 'Insurance',20,'06.02.22'),
                            (2, 'Account',22,'01.04.22'),
                            (3, 'Energy',26,'04.04.23');
-- fetch 
SELECT * FROM BRANCH;




-------------------------------------------------------------------------------------------------------------------

  -- create
  CREATE TABLE BRANCHSUPPLIER (
    branch_id INTEGER NOT NULl,
    supplier_name TEXT NOT NULL,
    supply_type TEXT NOT NULL
  );
  
  -- insert
  INSERT INTO BRANCHSUPPLIER VALUES (1, 'S_Direkt','Insurance'),
                              (1, 'Inshared','Insurance'),
                              (2, 'Deutsche_Bank','Credit'),
                              (2, 'Commerzbank','Credit'),
                              (3, 'Ostrom','Renewable'),
                              (3, 'E.On_Energy','Electricity');
                             
  -- fetch 
  SELECT * FROM BRANCHSUPPLIER;


-----------------------------------------------------------------------------------------------------------------------


 -- create
  CREATE TABLE CLIENT (
   client_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    branch_id INTEGER NOT NULL
  );
  
  -- insert
  INSERT INTO CLIENT VALUES (10, 'Daniel','Maier',2),
                              (11, 'Ella','Walter',2),
                              (12, 'Zhang','Wei',1),
                              (13, 'Ivan','Kirillov',3),
                              (14, 'John','Smith',3),
                              (15, 'Dirk','Pelletr',1),
                              (16, 'Tobias','Roth',1),
                              (27, 'Leonie','Williams',1);
                             
                             
  -- fetch 
  SELECT * FROM CLIENT;



  ------------------------------------------------------------------------------------------------------------------


   -- create
  CREATE TABLE WORKS_WITH (
   emp_id INTEGER PRIMARY KEY,
    Client_id INTEGER NOT NULL,
    total_sales INTEGER NOT NULL
  );
  
  -- insert
  INSERT INTO WORKS_WITH VALUES (28, 14,120000),
                              (22, 15,6000),
                              (20, 15,6000),
                              (25, 16,55000),
                              (21, 11,40000);
                             
                             
  -- fetch 
  SELECT * FROM WORKS_WITH;