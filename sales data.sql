SELECT * FROM sales_data.`sales data`;


# unique cities 
select distinct(`City`) as unique_city 
from sales_data.`sales data`;

# highest sales amount from the data : 

select `Sales` from sales_data.`sales data`
order by `Sales` desc
limit 5;

#products with a quantity ordered greater than 1.

select `Quantity Ordered`, `Product` 
from sales_data.`sales data`
where `Quantity Ordered` >1 
order by `Quantity Ordered`; 

# total quantity for all products:

select count(`Quantity Ordered`) as countqnt, `Product` 
from sales_data.`sales data`
group by `Product` 
having count(`Quantity Ordered`) >1 
order by countqnt; 

# Calculate the total sales for each city.

select round(sum(`Sales`)) as totsales , `City` 
from sales_data.`sales data`
group by `City`
order by totsales;

# Find the average price of products.

select round(avg(`Price Each`)) as avgprice , `Product`
from sales_data.`sales data`
group by `Product`
order by avgprice;

# Retrieve the orders made in December 2019.

select `Order Date` , `Product` 
from sales_data.`sales data`
where month(`Order Date`) = 12 and year(`Order Date`) = 2019
order by `Product`;

# Count the number of orders made in each month.

select month(`Order Date`) as month,
count(*)  as totord 
from sales_data.`sales data`
group by month(`Order Date`)
order by month(`Order Date`);

# Calculate the total sales for each product.

select distinct(`Product`) as pro , 
round(sum(`Sales`)) as totsales
from sales_data.`sales data`
group by `Product`
order by totsales;

# Retrieve orders where the price each is greater than $100.

select * from sales_data.`sales data`
where `Price Each` > 100
order by `Price Each`;

# Identify the most commonly ordered product.

select count(`Quantity Ordered`) as product_count , `Product`
from sales_data.`sales data`
group by `Product`
order by count(`Product`) desc
limit 1;

# Find the total sales for each hour of the day.

select hour(`Order Date`) as hour_of_day , round(sum(`Sales`)) as total_sales
from sales_data.`sales data`
group by hour(`Order Date`)
order by hour_of_day;

# Calculate the average quantity ordered for each product.

select `Product` , round(avg(`Quantity Ordered`)) as avg_quan
from sales_data.`sales data`
group by `Product`
order by avg_quan;

# Identify the city with the highest total sales.

select `City` , count(`Sales`) as totsales 
from sales_data.`sales data`
group by `City`
order by totsales;

#Find the top 5 products by sales amount.

select round(sum(`Sales`)) as sumsales , `Product`
from sales_data.`sales data`
group by `Product`
order by sumsales desc
limit 5;

# Identify the orders with a quantity ordered greater than 2 and a price each less than $50.

select `Quantity Ordered` , `Price Each`
from sales_data.`sales data`
where `Quantity Ordered` > 2 and `Price Each` < 50
order by `Price Each` ;

# Retrieve orders made in New York City.

SELECT *
FROM `sales data`
WHERE `City` = 'New York City';

# Calculate the total sales for each product category.

select round(sum(`Sales`)) as totsales , `Product`
from `sales data`
group by `Product`
order by totsales desc
limit 10;

# Identify the orders with a product price equal to $600 and a quantity ordered equal to 1.

select `Price Each`, `Quantity Ordered`
from `sales data` 
where `Quantity Ordered` = 1 and `Price Each` = 600
order by `Quantity Ordered`;





