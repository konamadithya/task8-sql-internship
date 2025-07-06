# Task 8: Stored Procedures and Functions

## Objective
Create reusable SQL blocks using stored procedures and functions.

## Files Included
- `stored_procs_and_funcs.sql`: SQL code defining sample procedures and functions.
- `README.md`: Explains what was done and how to run it.

## Stored Procedure
- `GiveBonus(dept, bonusAmount)`: Adds a bonus to all employees in a given department.

## Function
- `GetTotalSalary(dept)`: Returns the total salary paid to a specific department.

## How to Run
1. Use MySQL Workbench or any MySQL client.
2. Run the SQL script to create the table, insert data, and define the procedure and function.
3. Test them:
   ```sql
   CALL GiveBonus('HR', 2000);
   SELECT GetTotalSalary('Engineering');
   ```

## Tools
- MySQL Workbench or DB Browser (with adjustments for SQLite)