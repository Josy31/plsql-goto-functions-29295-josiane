CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary <= 400000 THEN
        v_tax := 0;

    ELSIF p_salary <= 700000 THEN
        v_tax := p_salary * 0.10;

    ELSE
        v_tax := p_salary * 0.20;
    END IF;

    RETURN v_tax;
END;
/
SELECT fn_calculate_tax(350000) AS tax_1,
       fn_calculate_tax(500000) AS tax_2,
       fn_calculate_tax(1000000) AS tax_3
FROM dual;
SELECT employee_id,
       employee_name,
       monthly_salary,
       fn_calculate_tax(monthly_salary) AS tax
FROM employees;