-- 1. Display All Salespeople
--Write a SQL statement that displays all the information about all salespeople.

INSERT INTO salesman (salesman_id, name, city, commission) 
VALUES 
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

select * from salesman;

-- 2. Display a Custom String
--Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". 

select ('This is SQL Exercise, Practice and Solution') as Custom_String;


--3. Display Three Numbers
--Write a SQL query to display three numbers in three columns. 

select 1 as column_1, 2 as column_2, 3 as column_3;


--4. Sum of Two Numbers
--Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server. 

select (10+15) as SUM_OF_TWO_NUM;

--5. Arithmetic Expression Result
--Write an SQL query to display the result of an arithmetic expression.

SELECT ROUND((10.0+15) / (2.0*2),2) AS Arithmetic_Expression_Result ;

--6. Specific Columns of Salespeople
--Write a SQL statement to display specific columns such as names and commissions for all salespeople.   

select name ,commission from salesman order by commission desc;

-- 7. Custom Column Order in Orders
-- Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.  

INSERT INTO orders (order_no, purchase_amt, order_date, customer_id, salesman_id)
VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

select * from orders;

select order_date, salesman_id, order_no, purchase_amt from orders
order by order_date asc;

-- 8. Unique Salespeople IDs
--From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id. 

select distinct salesman_id from orders; 

-- 9. Salespeople in Paris
--From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city.

select salesman_id, name, city from salesman where city = 'Paris';  

-- 10. Customers with Grade 200
--From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  

INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) 
VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

select * from customer;

select customer_id, cust_name,  city, grade, salesman_id from customer where grade = 200;

-- 11. Orders by Salesperson 5001
--From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.  

select salesman_id, order_no, order_date from orders where salesman_id = 5001 order by order_date asc;

--12. Nobel Winner of 1970
-- From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 

INSERT INTO nobel_win (year, subject, winner, country, category) VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

select * from nobel_win;

select winner, year from nobel_win where year = 1970; 

-- 13. Literature Winner 1971
-- From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner. 

select winner, year from nobel_win where year = 1971  and subject = 'Literature';

-- 14. Locate Dennis Gabor
--From the following table, write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject. 

select winner, subject from nobel_win where  winner = 'Dennis Gabor';

-- 15. Physics Winners Since 1950
-- From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner. 

select winner, subject , year from nobel_win where subject = 'Physics' and year >= 1950 order by year asc;

-- 16. Chemistry Winners (1965-1975)
-- From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. Begin and end values are included. Return year, subject, winner, and country.

select winner, subject, year from nobel_win where subject = 'Chemistry' and year between 1965 and 1975;

-- 17. Prime Ministers After 1972
-- Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.  

select *
from nobel_win 
where category = 'Prime Minister'
and 
winner in ('Menachem Begin','Yitzhak Rabin')
and year > 1972;

-- 18. Winners with First Name Louis
-- From the following table, write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’. Return year, subject, winner, country, and category.  

select * from nobel_win where winner like 'Louis%'; 

-- 19. Combine Winners (Physics 1970 & Economics 1971)
-- From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category. 

select * from nobel_win where year in (1970,1971) and subject in ('Physics','Economics') order by year asc;

-- 20. 1970 Winners Excluding Physiology & Economics
-- From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. Return year, subject,winner,country, and category.

select * from nobel_win where year = 1970 and subject not in ('Physics','Economics') order by year asc;

-- 21. Physiology Before 1971 & Peace After 1974
-- From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. Return year, subject, winner, country, and category. 

select * from nobel_win where SUBJECT = 'Physiology' AND YEAR < 1971

UNION

select * from nobel_win where SUBJECT = 'Peace' AND YEAR >= 1974 ORDER BY YEAR ASC;

-- 22. Details of Johannes Georg Bednorz
-- From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. Return year, subject, winner, country, and category.  

SELECT * FROM NOBEL_WIN WHERE WINNER =  'Johannes Georg Bednorz';


-- 23. Winners Excluding Subjects Starting with P
--From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. Return year, subject, winner, country, and category. Order the result by year, descending and winner in ascending.  

SELECT * FROM NOBEL_WIN WHERE WINNER NOT LIKE '%P' ORDER BY YEAR DESC, WINNER ASC;

-- 24. Ordered 1970 Nobel Prize Winners
--From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. Order the results by subject, ascending except for 'Chemistry' and ‘Economics’ which will come at the end of the result set. Return year, subject, winner, country, and category.  


select year, subject, winner, country, category from nobel_win where year = 1970
order by
case when subject in ('Chemistry', 'Economics') then 1 
else 0
end, subject asc;

-- 25. Products in Price Range Rs.200-600
-- From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.  

INSERT INTO item_list 
VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

select * from item_list;

select product_id, product_name, product_price, product_code 
from item_list 
where product_price between 200 and 600;

-- 26. Average Price for Manufacturer Code 16
--From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.

SELECT AVG(product_price) AS avg FROM item_list
WHERE product_code = 16;

-- 27. Display Item Name and Price
--From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.'  

select product_name as item_name , concat('₹',product_price) as Price_in_ruppes from item_list order by product_price desc; 

--28. Items with Price >= $250
--From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price.  

select product_name, product_price from item_list where product_price >= 250 order by product_price desc, product_name asc;

-- 29. Average Price per Company
--From the following table, write a SQL query to calculate average price of the items for each company. Return average price and company code. 

select round(avg(product_price),2) as average_price_of_product from item_list group by product_code ;

-- 30. Cheapest Item
--From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price.  

select * from item_list order by product_price asc limit 1;  

-- 31. Unique Employee Last Names
--From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname.  

INSERT INTO emp_details 
VALUES
(127323, 'Michale', 'Robbin', 57),
(526689, 'Carlos', 'Snares', 63),
(843795, 'Enric', 'Dosio', 57),
(328717, 'Jhon', 'Snares', 63),
(444527, 'Joseph', 'Dosni', 47),
(659831, 'Zanifer', 'Emily', 47),
(847674, 'Kuleswar', 'Sitaraman', 57),
(748681, 'Henrey', 'Gabriel', 47),
(555935, 'Alex', 'Manuel', 57),
(539569, 'George', 'Mardy', 27),
(733843, 'Mario', 'Saule', 63),
(631548, 'Alan', 'Snappy', 27),
(839139, 'Maria', 'Foster', 57);


select distinct emp_lname from emp_details;

-- 32. Employees with Last Name Snares
-- From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. Return emp_idno, emp_fname, emp_lname, and emp_dept.  

select emp_id, emp_fname, emp_lname, emp_dept from emp_details where emp_lname = 'Snares';

-- 33. Employees in Department 57
-- From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. Return emp_idno, emp_fname, emp_lname and emp_dept..  

select emp_id, emp_fname, emp_lname, emp_dept from emp_details where emp_dept = 57;