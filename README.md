Course: Database Development with PL/SQL (INSY 8311)

Overview
This repository contains my Individual Assignment III practical work on
PL/SQL GOTO statements and stored functions.
My assignment covers:
1.PL/SQL GOTO statements
2.Stored functions
3.Exception handling
4.Functions used in SQL
5.Payroll validation
6.Testing PL/SQL programs

Database Environment
1.Oracle Database 21c Express Edition
2.Oracle SQL Developer
3.Pluggable Database: XEPDB1

How i did the running processes:
1. Run `00_setup/create_tables.sql`.
2. Run the functions in `02_functions/`.
3. Run the programs in `01_goto/`.
4. Run the test files in `03_tests/`.
5. Verify the results and screenshots.

Functions Implemented

fn_annual_salary
Calculates an employee's annual salary from the monthly salary.

fn_years_of_service
Calculates the employee's completed years of service using the hire date.

fn_calculate_tax
Calculates tax according to the salary brackets used in this assignment.

fn_dept_name
Returns the department name for a given department ID and handles cases
where the department does not exist.

fn_validate_payroll
Validates salary information used for payroll processing.

Notes
1.I used an AI assistant as a learning and guidance tool during this assignment.
2.It helped me understand PL/SQL concepts, organize the required repository.

I reviewed, executed, tested, and verified the SQL and PL/SQL code using
Oracle SQL Developer.
