-- 11, Retrieve the names of employees who have a house rent allowance (HRA) 
--     greater than ₹4,000, sorted by their EMP_NAME in ascending order.

SELECT EMP_ID, EMP_NAME, HRA AS HRA_RANGE
FROM tax_report 
WHERE HRA > 4000
ORDER BY EMP_NAME ASC;

-- 12, Display employees whose travel allowance (TA) is more than ₹2,000 and less than ₹3,000.

SELECT EMP_ID,EMP_NAME,TA AS  TA_RANGE
FROM tax_report 
WHERE TA > 2000 AND TA <3000;

-- 13, Find the details of employees who have been working for more than 10 years (from the DATE_OF_JOINING column).

SELECT EMP_ID, EMP_NAME, DATE_OF_JOINING,
TIMESTAMPDIFF(YEAR, DATE_OF_JOINING, CURDATE()) AS YEARS_WORKED
FROM RECORDS
WHERE TIMESTAMPDIFF(YEAR, DATE_OF_JOINING, CURDATE()) > 10;

-- 14,Retrieve all employees from the Tax_Report table whose basic salary (BASIC_SALARY) is between ₹20,000 and ₹30,000.

SELECT EMP_ID, EMP_NAME, BASIC_SALARY AS BASIC_SALARY_RANGE
FROM tax_report
WHERE BASIC_SALARY > 20000 AND BASIC_SALARY < 30000 ORDER BY BASIC_SALARY ASC;





