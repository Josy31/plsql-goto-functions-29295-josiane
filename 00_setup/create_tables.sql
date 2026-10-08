File: 00_setup/create_tables.sql

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100) NOT NULL,
    monthly_salary NUMBER(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    department_id NUMBER,

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments
VALUES (10, 'Information Technology');

INSERT INTO departments
VALUES (20, 'Finance');

INSERT INTO departments
VALUES (30, 'Human Resources');

INSERT INTO employees
VALUES (101, 'Alice', 500000, DATE '2020-01-15', 10);

INSERT INTO employees
VALUES (102, 'Brian', 750000, DATE '2018-06-20', 20);

INSERT INTO employees
VALUES (103, 'Claudine', 350000, DATE '2023-03-10', 30);

INSERT INTO employees
VALUES (104, 'David', 1000000, DATE '2016-09-01', 10);

COMMIT;
