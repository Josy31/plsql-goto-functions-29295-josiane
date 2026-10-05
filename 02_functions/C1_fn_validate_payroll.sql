CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_salary IN NUMBER
)
RETURN VARCHAR2
IS
BEGIN
    IF p_salary IS NULL THEN
        RETURN 'INVALID: Salary cannot be NULL';

    ELSIF p_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';

    ELSE
        RETURN 'VALID';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'ERROR: Payroll validation failed';
END;
/
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