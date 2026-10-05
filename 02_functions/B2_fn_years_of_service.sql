CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date IN DATE
)
RETURN NUMBER
IS
    v_years NUMBER;
BEGIN
    v_years := TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);

    RETURN v_years;
END;
/
SELECT employee_id,
       employee_name,
       hire_date,
       fn_years_of_service(hire_date) AS years_of_service
FROM employees;