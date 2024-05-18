create database retail_orders;
use retail_orders;
select * from orders;

-- top 10 highest revenue generating products
select product_id,sum(selling_price) as Total_Sales from orders
group by product_id
order by Total_Sales desc
limit 10;

-- top 5 highest selling product in each region
with cte as(
select region,product_id,sum(selling_price) as total_sales,
rank() over(partition by region order by sum(selling_price) desc) as rnk
from orders
group by region,product_id)
select * from cte where rnk<6;

-- find month on month growth comparison in sales for 2022 and 2023
with cte as (
select distinct year(order_date) as order_year,
monthname(order_date) as order_month, 
round(sum(selling_price),2) as total from orders
group by order_year,order_month
order by total asc
)
select order_month,
sum(case when order_year=2022 then total else 0 end) as Sales_2022,
sum(case when order_year=2023 then total else 0 end) as Sales_2023
from cte 
group by order_month 
order by order_month asc;

-- for each category which month had the highest sales
with cte as(
select distinct category, monthname(order_date)as month,
year(order_date) as year, round(sum(selling_price),2) as sales,
rank() over(partition by category order by sum(selling_price) desc) as rnk
from orders
group by category,month, year
)
select * from cte where rnk=1;