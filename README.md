# Elevate Labs - SQL Developer Internship Task 8

## Task Overview
This project is the eighth task for the SQL Developer Internship. The objective is to learn how to create and use reusable SQL blocks: **Stored Procedures** and **Functions**.

- **Tools Used:** MySQL Workbench

---
## SQL Script
The `routines_script.sql` file contains the main deliverable. It includes the SQL code to create and then use one stored procedure and one stored function:
1.  **Stored Procedure (`GetCustomerOrders`):** A procedure that accepts a customer's ID as an input parameter and returns a result set of all orders placed by that customer. This demonstrates how procedures perform actions.
2.  **Stored Function (`GetProductCategory`):** A function that accepts a product's ID as an input parameter and returns a single value—the product's category. This demonstrates how functions are used to compute and return a value that can be used within other queries.

---
## Interview Questions & Answers

### 1. Difference between procedure and function?
The main difference is that a **function must return a single value** and can be used inside a query (like `SELECT`). A **procedure can perform actions** (like `INSERT`, `UPDATE`, `DELETE`), can return zero or multiple result sets, and must be called separately using the `CALL` command.

### 2. What is IN/OUT parameter?
An **`IN`** parameter is used to pass a value *into* a procedure or function. An **`OUT`** parameter is a variable that the procedure can modify to pass a value back *out* to the calling statement.

### 3. Can functions return tables?
In some database systems like SQL Server, yes (these are called table-valued functions). In standard MySQL, a user-defined function must return a single, scalar value, not a table.

### 4. What is RETURN used for?
The `RETURN` statement is used exclusively within a function to specify the single value that the function will send back to the caller.

### 5. How to call stored procedures?
You execute a stored procedure using the `CALL` command, followed by the procedure's name and any required arguments in parentheses: `CALL procedure_name(argument1);`.

### 6. What is the benefit of stored routines?
The benefits include **reusability** (write once, use many times), **security** (grant permission to run the routine without granting access to the underlying tables), and improved **performance** (the database pre-compiles and optimizes the execution plan).

### 7. Can procedures have loops?
Yes, stored procedures can contain complex control-flow logic, including `IF-THEN-ELSE` conditions and various types of loops (`WHILE`, `LOOP`, `REPEAT`).

### 8. Difference between scalar and table-valued functions?
A **scalar function** returns a single value (e.g., a number, a string, a date). A **table-valued function** (in systems that support it) returns a result set that is a table, which you can use in the `FROM` clause of a query.

### 9. What is a trigger?
A trigger is a special type of stored procedure that is automatically executed when a specific event (an `INSERT`, `UPDATE`, or `DELETE`) occurs on a specified table.

### 10. How to debug stored procedures?
Debugging can be done by using `SELECT` statements at various points in the code to check the values of variables, by inserting debug information into a separate logging table, or by using the advanced debugging tools provided by some database IDEs.
