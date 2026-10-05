CREATE OR REPLACE FUNCTION fn_dept_name (
    p_department_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_department_name departments.department_name%TYPE;
BEGIN
    SELECT department_name
    INTO v_department_name
    FROM departments
    WHERE department_id = p_department_id;

    RETURN v_department_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Department not found';
END;
/
SELECT fn_dept_name(10) AS department_name
FROM dual;
SELECT fn_dept_name(20) AS department_name
FROM dual;
SELECT fn_dept_name(30) AS department_name
FROM dual;
SELECT fn_dept_name(99) AS department_name
FROM dual;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Department not found';
        
SELECT employee_id,
       employee_name,
       department_id,
       fn_dept_name(department_id) AS department_name
FROM employees;