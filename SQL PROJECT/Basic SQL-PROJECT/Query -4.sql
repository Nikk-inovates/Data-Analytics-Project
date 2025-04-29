-- 15,Perform an inner join between Records and Tax_Report to display the 
--    EMP_ID, EMP_NAME, SALARY, and NET_SALARY of all employees.

SELECT R.EMP_ID, R.EMP_NAME, R.SALARY,T.NET_SALARY
FROM records R
INNER JOIN tax_report T ON R.EMP_ID = T.EMP_ID; 


-- 16, Find employees whose total salary (SALARY) from the Records table does not match their basic salary 
--     (BASIC_SALARY) × 2 in the Tax_Report table, assuming the SALARY in the Records table equals the 
--     total salary for each employee.

SELECT 
    r.EMP_ID, 
    r.EMP_NAME, 
    r.SALARY AS Total_Salary, 
    t.BASIC_SALARY, 
    (t.BASIC_SALARY * 2) AS Calculated_Salary
FROM 
    Records r
INNER JOIN 
    Tax_Report t
ON 
    r.EMP_ID = t.EMP_ID
WHERE 
    r.SALARY != (t.BASIC_SALARY * 2);
    
-- 17, List the details of employees who pay more than ₹5,000 in taxes (TAX) and have a SALARY above ₹60,000.

SELECT 
    r.EMP_NAME, 
    t.TAX, 
    r.SALARY
FROM 
    Records r
INNER JOIN 
    Tax_Report t
ON 
    r.EMP_ID = t.EMP_ID
WHERE 
    t.TAX > 5000 
    AND r.SALARY > 50000;

-- Identify employees whose insurance deduction (INSURANCE_2000) is not equal to ₹2,000 in the Tax_Report table. 

SELECT EMP_NAME,TAX 
FROM tax_report 
WHERE TAX > 5000;

