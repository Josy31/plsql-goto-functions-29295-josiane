SET SERVEROUTPUT ON;

DECLARE
    v_employee_name employees.employee_name%TYPE;
    v_salary        employees.monthly_salary%TYPE;
BEGIN
    -- Get employee 101's name and salary
    SELECT employee_name, monthly_salary
    INTO v_employee_name, v_salary
    FROM employees
    WHERE employee_id = 101;

    -- Review the employee's salary
    IF v_salary < 400000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 700000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Salary Review: Low salary');
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Salary Review: Medium salary');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
    DBMS_OUTPUT.PUT_LINE('Salary Review: High salary');

    <<finish>>
    NULL;
END;
/