-- 6, Calculate the total number of employees in the Records table.

SELECT COUNT(EMP_ID) AS TOTAL_COUNT_OF_EMPLOYE
FROM records;

-- 7,Find the average, minimum, and maximum SALARY in the Records table.

SELECT 
AVG(NET_SALARY) AS AVRAGE_SALARY, 
MIN(NET_SALARY) AS MINIMUM_SALARY, 
MAX(NET_SALARY) AS MAXIMUM_SALARY
FROM tax_report;

-- 8, Calculate the total tax collected from all employees (sum of the TAX column).

SELECT 
SUM(TAX) AS TOTAL_TAX_COLLECTED
FROM tax_report;

-- 9,Find the average net salary (NET_SALARY) of employees grouped by those who joined before 2015 and after 2015.

SELECT
IF(YEAR(DATE_OF_JOINING) < 2015 , 'BEFORE 2015', 'AFTER 2015' ) AS JOINING_PERIOD,
AVG(SALARY) AS AVERAGE_SALARY
FROM records
GROUP BY JOINING_PERIOD;

-- 10, Count the number of employees who pay more than ₹5000 in taxes.

SELECT SUM(EMP_ID) AS EMP_SALARY_MORE_THAN_5000
FROM tax_report 
WHERE TAX > 5000;
