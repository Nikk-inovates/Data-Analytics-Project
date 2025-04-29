-- 1, Display all the employee names and their total salaries (SALARY) from the Records table.
SELECT EMP_NAME, SUM(Salary) AS TotalSalary
FROM Records
GROUP BY EMP_NAME;


-- 2,	Retrieve the names and net salaries of employees who have a net salary greater than ₹55,000.

SELECT EMP_NAME , NET_SALARY 
FROM tax_report 
WHERE NET_SALARY > 55000;

-- 3,List all employees who joined between 2015 and 2020.

SELECT EMP_NAME,DATE_OF_JOINING
FROM records
WHERE DATE_OF_JOINING 
BETWEEN '2015-01-01' AND '2020-12-31' 
ORDER BY DATE_OF_JOINING ASC;

-- 4,Find the employee(s) with the highest net salary in the Tax_Report table.

SELECT EMP_NAME, NET_SALARY 
FROM tax_report 
WHERE NET_SALARY = (SELECT MAX(NET_SALARY) FROM tax_report);

-- 5, Retrieve the details of employees whose total salary (SALARY) is less than or equal to ₹50,000

SELECT EMP_NAME, NET_SALARY 
FROM tax_report 
WHERE NET_SALARY <= 50000;



