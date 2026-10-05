C2 — Reflection
PL/SQL GOTO Statements and Functions

This assignment helped me understand how GOTO statements and stored
functions work in PL/SQL

I learned that a GOTO statement transfers program control to a labeled
statement. While completing the Number Classifier and Salary Review tasks,
I used labels to direct execution to different sections of a PL/SQL block.

The Illegal GOTO task helped me understand an important restriction of
GOTO. A GOTO statement cannot be used to transfer control from an outer
block directly into a nested block. I corrected this by placing the target
label in a valid scope.

When I rewrote the salary review without GOTO, I found that IF, ELSIF,
and ELSE statements made the program easier to read and understand.
Therefore, although GOTO can be useful for demonstrating control transfer,
structured control statements are usually clearer for normal program logic.

I also learned how to create stored functions in Oracle PL/SQL. I created
functions to calculate annual salary, calculate years of service, calculate
tax, retrieve a department name, and validate payroll information.

I learned that a function accepts parameters, performs an operation, and
returns a value. I also learned that stored functions can be called directly
from SQL SELECT statements.

Exception handling was used in the department-name function to handle a
department that does not exist. This showed me how PL/SQL can handle
runtime problems without causing the whole operation to fail unexpectedly.

Overall, the assignment improved my understanding of PL/SQL program
control, stored functions, exception handling, SQL queries, and testing
database programs.