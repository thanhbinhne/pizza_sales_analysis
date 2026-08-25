--TotalRevenue
select sum(total_price) Total_Revenue from pizza_sales;

--Average Order Value
select sum(total_price) / count(distinct order_id) Average_Order_Value from pizza_sales;

--Total Pizza Sold
select sum(quantity) Total_Pizza_Sold from pizza_sales;

--Total Orders
select count(distinct order_id) Total_Orders from pizza_sales;

--Average Pizza per Order
select cast(
	cast(sum(quantity) as decimal(10,2)) /  
	cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) 
	Avg_Pizza_per_Order from pizza_sales;

--Daily Trend for Total Orders
select datename(DW, order_date) order_date,
	count(distinct order_id) Total_Orders
from pizza_sales
group by datename(DW, order_date);

--Monthly Trend for Total Orders
select datename(month, order_date) Month_Name,
	count(distinct order_id) Total_Orders
from pizza_sales
group by datename(month, order_date)
order by Total_Orders desc;

--Percentage of Sales by Pizza Category 
--Per Month
create procedure calc_pct_sale
	@month int
as 
begin
	select pizza_category,
		cast(sum(total_price) as decimal(10,2)) Total_Sales,
		cast(sum(total_price) * 100 / (select sum(total_price) 
										from pizza_sales 
										where MONTH(order_date) = @month)
			as decimal(10,2)) Percentage_Sales
	from pizza_sales
	where MONTH(order_date) = @month
	group by pizza_category;
end;

exec calc_pct_sale 5

--Per Quater
create procedure calc_pct_sale_per_quarter
	@quarter int
as 
begin
	select pizza_category,
		cast(sum(total_price) as decimal(10,2)) Total_Sales,
		cast(sum(total_price) * 100 / (select sum(total_price) 
										from pizza_sales 
										where Datepart(quarter,order_date) = @quarter)
			as decimal(10,2)) Percentage_Sales
	from pizza_sales
	where Datepart(quarter,order_date) = @quarter
	group by pizza_category;
end;

exec calc_pct_sale_per_quarter 2

--Percentage of Sales by Pizza Category
select pizza_category,
		cast(sum(total_price) as decimal(10,2)) Total_Sales,
		cast(sum(total_price) * 100 / (select sum(total_price) 
										from pizza_sales )
			as decimal(10,2)) Percentage_Sales
	from pizza_sales
	group by pizza_category;

--Percentage Sales by Pizza’s Size
--Per Month
ALTER PROCEDURE pct_sales_pizza_size_month
    @month INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        pizza_size,
        CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Sales,
        CAST(
            SUM(total_price) * 100.0 /
            (
                SELECT SUM(total_price)
                FROM pizza_sales
                WHERE MONTH(order_date) = @month
            )
            AS DECIMAL(10,2)
        ) AS Percentage_Sales
    FROM pizza_sales
    WHERE MONTH(order_date) = @month
    GROUP BY pizza_size;
END;
GO

EXEC pct_sales_pizza_size_month 1;
--Per Quarter
create procedure pct_sale_pizza_quarter
	@quarter int
as 
begin
	select pizza_category,
		cast(sum(total_price) as decimal(10,2)) Total_Sales,
		cast(sum(total_price) * 100 / (select sum(total_price) 
										from pizza_sales 
										where Datepart(quarter,order_date) = @quarter)
			as decimal(10,2)) Percentage_Sales
	from pizza_sales
	where Datepart(quarter,order_date) = @quarter
	group by pizza_category;
end;

exec pct_sale_pizza_quarter 2
--Over Year
select pizza_size,
		cast(sum(total_price) as decimal(10,2)) Total_Sales,
		cast(sum(total_price) * 100 / (select sum(total_price) 
										from pizza_sales )
			as decimal(10,2)) Percentage_Sales
from pizza_sales
group by pizza_size
order by Percentage_Sales DESC;

--Total Pizza Sold by Category
select pizza_category,
	cast(sum(total_price) as decimal(10,2)) Total_Revenue
from pizza_sales
group by pizza_category;

--Top 5 Pizza by Revenue
select top 5 pizza_name,
	cast(sum(total_price) as decimal(10,2)) Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue DESC;

--Bottom 5 Pizza by Revenue
select top 5 pizza_name,
	cast(sum(total_price) as decimal(10,2)) Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue ASC;

--Top 5 Pizza by Quantity
select top 5 pizza_name,
	sum(quantity) Quantity
from pizza_sales
group by pizza_name
order by Quantity DESC;

--Bottom 5 Pizza by Quantity
select top 5 pizza_name,
	sum(quantity) Quantity
from pizza_sales
group by pizza_name
order by Quantity ASC;

--Top 5 Pizza by Total Order
select top 5 pizza_name,
	count(distinct order_id) Total_Orders
from pizza_sales
group by pizza_name
order by Total_Orders DESC;

--Bottom 5 Pizza by Total Order
select top 5 pizza_name,
	count(distinct order_id) Total_Orders
from pizza_sales
group by pizza_name
order by Total_Orders ASC;