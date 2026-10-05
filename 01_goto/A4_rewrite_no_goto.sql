SET SERVEROUTPUT ON;

DECLARE
    v_employee_name employees.employee_name%TYPE;
    v_salary        employees.monthly_salary%TYPE;
BEGIN
    -- Retrieve employee information
    SELECT employee_name, monthly_salary
    INTO v_employee_name, v_salary
    FROM employees
    WHERE employee_id = 101;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

    -- Salary review without using GOTO
    IF v_salary < 400000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Low salary');

    ELSIF v_salary <= 700000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Medium salary');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary Review: High salary');
    END IF;

END;
/