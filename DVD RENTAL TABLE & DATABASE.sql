--Creating table
create table Product_table (
Proudct_id INT Primary key,
Product_name Varchar (50) NOT NULL,
Product_type Varchar (50));


create table shipping_table (
Shipping_id INT Primary key,
Shipping_fee FLOAT NOT NULL,
Shipping_company Varchar (50) NOT NULL);


create table Customer_table (
customer_id INT Primary key,
first_name Varchar (50)NOT NULL,
last_name Varchar (50) NOT NULL,
email Varchar (50),
phone_no Varchar (50));


create table Agent_table (
agent_id INT Primary key,
name Varchar (50)NOT NULL,
email Varchar (50),
phone_no Varchar (50));


create table Payment_table (
payment_id INT Primary key,
amount FLOAT NOT NULL,
payment_date Varchar (50) NOT NULL);


Create table Sales_table(
Sales_id INT Primary Key,
Discount_code Varchar (50)NOT NULL,
Payment_date Varchar (50) NOT NULL);


--Exisiting Database
--We want to know the customer who paid between amount 1 and 2

--WHERE STATEMENT
select customer_id, amount from payment
where amount >=1 and amount <=2

--BETWEEN STATEMENT
select customer_id, amount from payment
where amount between 1 and 2


--We want to know the one time least 10 paying customers
select customer_id, min(amount)
from payment
group by customer_id 
order by sum(amount) asc
limit 10;


--Join film and inventory table
select f.film_id,title,inventory_id, I.film_id
From film AS f FULL JOIN inventory AS i
ON f.film_id = i.film_id


--We want to know the least 10 total amount paid by returning customers
select customer_id, sum(amount)
from payment
group by customer_id 
order by sum(amount)asc
limit 10;


--We want to know the average amount spent by the top 10 paying customers
select customer_id, sum(amount)
from payment
group by customer_id 
order by sum(amount)desc
limit 10;


--We want to know customers who paid a total amount between 50 & 55
select customer_id,sum (amount)
from payment
group by customer_id
having sum (amount) between 50 and 55;


--Your manager wants you to know the countrys name that starts with Al and ends with a,
--he is not so sure and he has only that information.

select * from country
where country like 'Al%'


--We want to get the email of the staff whose first name is mike
select first_name,email from staff
where first_name = 'Mike'

