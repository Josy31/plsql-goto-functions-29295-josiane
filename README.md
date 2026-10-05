Individual Assignment III  PL/SQL GOTO Statements and Functions

Course: Database Development with PL/SQL (INSY 8311)

Overview
This repository contains my Individual Assignment III practical work on
PL/SQL GOTO statements and stored functions.

The assignment covers:
1.PL/SQL GOTO statements
2.Stored functions
3.Exception handling
4.Functions used in SQL
5.Payroll validation
6.Testing PL/SQL programs

Repository Structure

00_setup/
- create_tables.sql

01_goto/
1.A1_number_classifier.sql
2.A2_salary_review.sql
3.A3_illegal_goto.sql
4.A4_rewrite_no_goto.sql

02_functions/
1.B1_fn_annual_salary.sql
2.B2_fn_years_of_service.sql
3.B3_fn_calculate_tax.sql
4.B4_fn_dept_name.sql
5.C1_fn_validate_payroll.sql

03_tests/
1.B5_functions_in_select.sql
2.test_functions.sql
3.test_validate_payroll.sql

screenshots/
1.A1_output.png
2.A2_output.png
3.A3_error_and_fix.png
4.A4_output.png
5.B5_select_output.png
6.C1_output.png

docs/
- REFLECTION.md

Database Environment
1.Oracle Database 21c Express Edition
2.Oracle SQL Developer
3.Pluggable Database: XEPDB1

How to Run
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
2.It helped me understand PL/SQL concepts, organize the required repository
3.structure, and review examples involving GOTO statements, stored functions,
4.exception handling, and testing.

I reviewed, executed, tested, and verified the SQL and PL/SQL code using
Oracle SQL Developer and remain responsible for understanding and explaining
the submitted work.