-- Individual Assignment III
-- General Function Tests

-- B1: Annual Salary
SELECT employee_name,
       monthly_salary,
       fn_annual_salary(monthly_salary) AS annual_salary
FROM employees;

-- B2: Years of Service
SELECT employee_name,
       hire_date,
       fn_years_of_service(hire_date) AS years_of_service
FROM employees;

-- B3: Tax Calculator
SELECT employee_name,
       monthly_salary,
       fn_calculate_tax(monthly_salary) AS calculated_tax
FROM employees;

-- B4: Department Name
SELECT employee_name,
       department_id,
       fn_dept_name(department_id) AS department_name
FROM employees;

-- Test department exception handling
SELECT fn_dept_name(99) AS invalid_department
FROM dual;