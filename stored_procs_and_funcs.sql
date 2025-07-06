-- Task 8: Stored Procedures and Functions

-- Create a sample table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary INT
);

-- Insert sample data
INSERT INTO Employees (EmpID, Name, Department, Salary) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Engineering', 75000),
(3, 'Charlie', 'HR', 52000),
(4, 'David', 'Engineering', 80000),
(5, 'Eva', 'Marketing', 60000);

-- Stored Procedure to give a bonus to employees of a specific department
DELIMITER //
CREATE PROCEDURE GiveBonus(IN dept VARCHAR(50), IN bonusAmount INT)
BEGIN
    UPDATE Employees
    SET Salary = Salary + bonusAmount
    WHERE Department = dept;
END //
DELIMITER ;

-- Function to return total salary of a department
DELIMITER //
CREATE FUNCTION GetTotalSalary(dept VARCHAR(50)) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(Salary) INTO total
    FROM Employees
    WHERE Department = dept;
    RETURN total;
END //
DELIMITER ;