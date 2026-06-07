-- Beginner Stage

-- Retrieve all Customers

SELECT*
FROM customers
;


-- Product Names and Prices

Select product_name,
unit_price
From products
;


-- Completed Orders Only

Select *
From orders
Where status = "Completed"
;


-- Affordable Products

Select*
From Products
Where unit_price <=50
;


-- Sort Products by Price

Select*
From products
Order By unit_price DESC
;



-- Intermediate Stage 

-- Order Per Customer

Select customer_id, Count(*) Order_count
From orders
Group By customer_id
;


-- Revenue per Order

Select order_id,
sum(quantity * unit_price) Order_Total
From order_items
Group By order_id
;


-- Customers with orders

Select Distinct full_name,
email
From customers C
Join orders O
	on C.customer_id = O.Customer_id
;


-- Top Spending Customers

Select full_name,
SUM(Quantity * oi.unit_price) Total_spent
From customers C
Join orders O
	on C.customer_id = O.customer_id
Join order_items oi
	on O.order_id = oi.order_id
Where O.status = "Completed"
Group By C.customer_id,
C.full_name
Order BY Total_spent Desc
Limit 5
;


-- Best Selling Products

Select p.product_name,
SUM(oi.quantity) Unit_sold
From order_items oi
Join products p 
	on oi.product_id = p.product_id
Group By p.product_id,
p.product_name
Order By Unit_sold desc
Limit 3
;



-- Advanced

-- Customers who Never ordered

Select C.full_name,
C.email
From customers C
Left Join orders O
	on C.customer_id = O.customer_id
Where O.order_id is null
;


-- Monthly Revenue

Select monthname(o.order_date) month,
Sum(oi.quantity * oi.unit_price) Revenue
From orders o
Join order_items oi
	on oi.order_id = o.order_id
Where o.status = 'Completed'
group by month
order by month 
;


-- High-Value Categories

Select category,
round(Avg(unit_price),2) Avg_price
From products
group by category
Having Avg_price > 40
order by Avg_price
;


-- Repeat Buyers

Select C.full_name,
Count(o.order_id) Completed_orders
From customers C
Join orders o
	on C.customer_id = o.customer_id
Where o.status = 'Completed'
group by C.full_name
Having Count(o.order_id) > 1
;