select *
from df_orders


--find top 10 highest revenue generating products
select top 10 product_id, sum(sale_price) sales
from df_orders
group by product_id
order by 2 desc

--find top 5 highest selling products in each region
with cte as (
select region, product_id, sum(sale_price) sales
from df_orders
group by region, product_id)

select * from(
select *, rank() over (partition by region order by sales desc) ranking
from cte) sub
where sub.ranking between 1 and 5

--find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023
with cte as (
select year(order_date) as order_year, month(order_date) as order_month, 
	sum(sale_price) as sales
from df_orders
group by year(order_date), month(order_date))

select order_month,
	sum(case when order_year = 2022 then sales else 0 end) sales_2022,
	sum(case when order_year = 2023 then sales else 0 end) sales_2023
from cte
group by order_month
order by 1

--for each category which month had highest sales
select category, year_month from(
select category,
	format(order_date, 'yyyy/MM') as year_month,
	sum(sale_price) as sales,
	rank() over (partition by category order by sum(sale_price) desc) as ranking
from df_orders
group by category, format(order_date, 'yyyy/MM')) as a
where ranking = 1





