SELECT
    employee_id,
    employee_name,
    monthly_salary,
    fn_validate_payroll(monthly_salary) AS payroll_status
FROM employees
ORDER BY employee_id;
SELECT fn_validate_payroll(500000) AS valid_salary,
       fn_validate_payroll(0) AS zero_salary,
       fn_validate_payroll(-100000) AS negative_salary,
       fn_validate_payroll(NULL) AS null_salary
FROM dual;