CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary IN NUMBER
)
RETURN NUMBER
IS
    v_annual_salary NUMBER;
BEGIN
    v_annual_salary := p_monthly_salary * 12;

    RETURN v_annual_salary;
END;
/
SELECT fn_annual_salary(500000) AS annual_salary
FROM dual;
SELECT employee_id,
       employee_name,
       monthly_salary,
       fn_annual_salary(monthly_salary) AS annual_salary
FROM employees;