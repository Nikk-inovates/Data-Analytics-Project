-- 1. Customers with Grade > 100
-- From the following table, write a  SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and salesman_id. 

select customer_id, cust_name, grade, salesman_id 
from customer 
where grade > 100;

-- 2. New York Customers with Grade > 100
-- From the following table, write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100. Return customer_id, cust_name, city, grade, and salesman_id.  

select customer_id, cust_name, city , grade , salesman_id 
from customer 
where grade > 100 
and city = 'New York';

-- 3. New York or Grade > 100
-- From the following table, write a SQL query to find customers who are from the city of New York or have a grade of over 100. Return customer_id, cust_name, city, grade, and salesman_id.  

select customer_id, cust_name, city , grade, salesman_id 
from customer 
where grade > 100
or
city = 'New York';

-- 4. New York or Not Grade > 100
-- From the following table, write a SQL query to find customers who are either from the city 'New York' or who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.  

select customer_id, cust_name, city , grade, salesman_id 
from customer 
where grade <= 100
or
city = 'New York';

-- 5. Not New York and Not Grade > 100
-- From the following table, write a SQL query to identify customers who are not from the city of 'New York' and do not have a grade value greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.

select customer_id, cust_name, city , grade, salesman_id 
from customer 
where grade != 100
and 
city != 'New York';


-- 6. Exclude Specific Order
-- From the following table, write a SQL query to find details of all orders excluding those with ord_date equal to '2012-09-10' and salesman_id higher than 5005 or purch_amt greater than 1000.Return ord_no, purch_amt, ord_date, customer_id and salesman_id.  

select order_no, purchase_amt, order_date, customer_id, salesman_id
from orders 
where order_date != '2012-09-10' 
and salesman_id > 5005 
or purchase_amt > 1000; 

-- 7. Salespeople with Commission Range 0.10-0.12
-- From the following table, write a SQL query to find the details of those salespeople whose commissions range from 0.10 to0.12. Return salesman_id, name, city, and commission. 

select salesman_id, name , city , commission 
from salesman
where (commission > 0.10 and commission <0.12);

-- 8. Orders with Amount < 200 or Exclusions
-- From the following table, write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009. Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

select order_no, purchase_amt, order_date, customer_id, salesman_id
from orders
where (purchase_amt < 200 or not (order_date >= '2012-02-10'
and customer_id < 3009));

-- 9. Conditional Orders Exclusions
-- From the following table, write a SQL query to find all orders that meet the following conditions. Exclude combinations of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.

select * from orders where NOT(order_date = '2012-08-17' 
OR (customer_id > 3005  
and purchase_amt < 1000));

-- 10. Orders with Achieved Percentage > 50%
-- Write a SQL query that displays order number, purchase amount, and the achieved and unachieved percentage (%) for those orders that exceed 50% of the target value of 6000.  

SELECT 
    order_no, 
    purchase_amt, 
    ROUND((purchase_amt / 6000) * 100, 2) AS achieved_percentage,
    ROUND(100 - ((purchase_amt / 6000) * 100), 2) AS unachieved_percentage
FROM 
    orders
WHERE 
    (purchase_amt / 6000) * 100 > 50;

-- 11. Employees with Last Name Dosni or Mardy
-- From the following table, write a SQL query to find the details of all employees whose last name is ‘Dosni’ or ‘Mardy’. Return emp_idno, emp_fname, emp_lname, and emp_dept.  

select emp_id, emp_fname , emp_lname, emp_dept 
from emp_details 
where emp_lname in ('Dosni','Mardy');


-- 12. Employees in Department 47 or 63
-- from the following table, write a SQL query to find the employees who work at depart 47 or 63. Return emp_idno, emp_fname, emp_lname, and emp_dept.

select emp_id, emp_fname , emp_lname, emp_dept 
from emp_details 
where emp_dept in (47,63);


