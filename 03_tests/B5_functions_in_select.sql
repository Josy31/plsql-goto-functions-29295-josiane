SELECT
    employee_id,
    employee_name,
    monthly_salary,
    fn_annual_salary(monthly_salary) AS annual_salary,
    fn_years_of_service(hire_date) AS years_of_service,
    fn_calculate_tax(monthly_salary) AS tax,
    fn_dept_name(department_id) AS department_name
FROM employees
ORDER BY employee_id;