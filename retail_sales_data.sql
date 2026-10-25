use pytable;
select*from retail_sales_data;

select segment,sum(profit),sum(sales),sum(quantity)from retail_sales_data group by segment order by segment;

select region,sum(profit),sum(sales),sum(quantity) from retail_sales_data group by region ;

select city,sum(profit),sum(sales),sum(quantity) from retail_sales_data group by city;

select category,sum(profit),sum(sales),sum(quantity)from retail_sales_data group by category;

select product,sum(sales),sum(profit),sum(quantity) from retail_sales_data group by product;

select product,category,city,region,segment,sum(profit),sum(sales),sum(quantity)from retail_sales_data group by product,category,city,region,segment;

select order_date,sum(sales)from retail_sales_data group by order_date order by sum(sales) desc limit 10;
