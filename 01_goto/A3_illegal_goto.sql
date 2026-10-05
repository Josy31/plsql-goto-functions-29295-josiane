SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Starting program');

    GOTO valid_label;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('Valid GOTO executed');

    BEGIN
        DBMS_OUTPUT.PUT_LINE('Inside nested block');
    END;

    DBMS_OUTPUT.PUT_LINE('Program finished');
END;
/