CREATE DATABASE superstore_project;
SHOW DATABASES;
USE superstore_project;
SHOW TABLES;
SELECT *
FROM superstore
LIMIT 10;
DESCRIBE superstore;
SELECT region, category, Sales, Profit
FROM superstore
Limit 10;
select region, sum(sales) AS total_sales
from superstore
group by region
order by total_sales DESC;
select category, sum(sales) as total_sales
from superstore
group by category
order by total_sales DESC;
select region, sum(sales) as total_sales
from superstore
where region = 'west';
select *
from superstore
where sales>1000;
select region, sales
from superstore
WHERE region = 'west' AND sales>1000;
select region, sales
from superstore
where region = 'west' or region = 'east';	
select region, sales
from superstore
where not region = 'WEST'; 
select *
from superstore
where profit < 0;
select region, sales
from superstore
where region = 'west'
order by sales DESC
limit 10;
select region, sum(sales) as total_sales
from superstore
group by region
Having total_sales > 500000;  
select count(*)
from superstore;
select avg(sales)
from superstore;
select max(sales)
from superstore;
select min(sales)
from superstore;
select `customer name`, sum(sales) as total_sales
from superstore
group by `customer name`
Order by total_sales Desc
Limit 10; 
describe superstore;                                                                                                                                                                                                                  
select `customer name`, sum(profit) as total_profit
from superstore
group by `customer name`
order by total_profit desc
limit 10;
select `product name`, sum(profit) as total_profit
from superstore
group by `product name`
Having total_profit < 0
order by total_profit
limit 10;	
select count(distinct `region`)
from superstore;
select *
from superstore
where `customer name` is Null;
select *
from superstore
where sales is Null;
select *
from superstore
where profit is Null;
select count(DISTINCT region)
from superstore;
select count(DISTINCT category)
from superstore;
select count(DISTINCT category)
from superstore;
select count(distinct `customer name`) as total_customers
from superstore;
select count(distinct `product name`)
from superstore;
select count(distinct region)
from superstore;
select sum(sales) as total_sales
from superstore;
select sum(profit) as total_profit
from superstore;
SELECT count(*) as Total_Records
FROM superstore;
select `row id`, count(*) as Duplicate_Count
from superstore
group by `row id`
Having count(*) > 1;
select count(*) as Missing_Sales
From superstore
Where sales is Null;
select distinct region
from superstore;
select distinct category
from superstore;
select distinct segment
from superstore;
select distinct `ship mode`
from superstore;
select sum(sales) as Total_Sales
From superstore;
select sum(profit) as Total_Profit
from superstore;
select count(distinct `order id`) as total_orders
from superstore;
select count(distinct `customer id`) as Total_Customers
from superstore;
select sum(sales)/count(distinct `order id`) as Average_Order_Value
from superstore;
select sum(profit)/count(distinct `order id`) as Average_Profit_Per_Order
From superstore;
select region, sum(sales) as Total_Sales
from superstore
group by region
order by total_sales desc;
select region, sum(profit) as Total_Profit
From superstore
Group by region
Order by Total_Profit DESC;
describe superstore;
Select category, sum(sales) as Total_Sales
from superstore
Group by category
Order by Total_Sales DESC;
select category, sum(profit) as Total_Profit
from superstore
group by category
Order by Total_Profit DESC;
describe superstore;
select segment, sum(sales) as total_sales
from superstore
group by segment
order by total_sales desc;
select segment, sum(profit) as total_profit
from superstore
group by segment
order by total_profit Desc;
select `customer name`, sum(sales) as Total_Sales
from superstore
group by `customer name`
order by Total_Sales Desc
Limit 10;
select `customer name`, sum(profit) as Total_Profit
from superstore
group by `customer name`
order by Total_Profit Desc
Limit 10;
select `customer name`, sum(sales), sum(profit), round((sum(profit) / sum(sales)) *100, 2) as Profit_Margin_Percentage
from superstore
group by `customer name`
having sum(sales) > 0
order by Profit_Margin_Percentage desc
Limit 10;
describe superstore;
select `product name`, sum(sales) as Total_Sales
From Superstore
group by `product name`
order by Total_Sales Desc
limit 10;
select `product name`, round(sum(profit), 2) as Total_Profit 
From superstore
group by `product name`
order by Total_Profit Desc
Limit 10;
select `product name`, round(sum(profit), 2) as Total_Profit
from superstore
group by `product name`
having sum(profit) <0
order by Total_Profit ASC
Limit 10;
describe superstore;
select `ship mode`, round(sum(sales),2) as Total_Sales
from superstore
group by `ship mode`
Order by Total_Sales Desc;
select `ship mode`, round(sum(profit), 2) as Total_Profit
from superstore
group by `ship mode`
order by Total_Profit desc;
select year(`order date`) as Order_Year, Sum(sales) as Total_sales
from superstore
Group by year(`order date`)
order by Order_Year;
select `order date`
from superstore;
alter table superstore
add column Order_Date_Clean DATE;
describe superstore;
update superstore
set Order_Date_Clean = STR_TO_DATE(`order date`, `%d, %m, %Y`);
describe superstore;
select Year(Order_Date_Clean) as Order_Year, round(sum(sales), 2) as Total_Sales
from superstore
Group by Year(Order_Date_Clean)
Order by Order_Year;
select year(Order_Date_Clean), Round(sum(sales), 2) as Total_Sales
from superstore
group by year(Order_Date_Clean)
order by year(Order_Date_Clean);
select year(Order_Date_Clean), Round(sum(profit), 2) as Total_Profit
from superstore
group by year (Order_Date_Clean)
order by year (Order_Date_Clean);
select month(Order_Date_Clean), round(sum(sales), 2) as Total_Sales
from superstore
group by month(Order_Date_Clean)
Order by month(Order_Date_Clean);
select round(sum(sales), 2) as Total_Sales, round(sum(profit), 2) as Total_Profit, count(distinct `order id`) as Total_Orders, count(distinct `customer id`) as Total_Customers
from superstore;
select round(sum(sales), 2) as Total_Sales, round(sum(profit), 2) as Total_Profit, count(distinct `order id`) as Total_Orders, count(distinct `customer id`) as Total_Customers, round(sum(sales)/count(distinct `order id`),2) as Average_Order_Value, round(sum(profit)/count(distinct `order id`), 2) as Average_Profit_Per_Order, round(sum(profit)/sum(sales) * 100, 2) as Profit_Margin_Percentage
from superstore;