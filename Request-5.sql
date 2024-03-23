/*Get the products that have the highest and lowest manufacturing costs.
The final output should contain these fields,
product_code
product
manufacturing_cost*/

Select p.product_code,product,m.manufacturing_cost FROM dim_product p
join fact_manufacturing_cost m
on p.product_code=m.product_code
where manufacturing_cost=(select max(manufacturing_cost) from fact_manufacturing_cost)
union
Select p.product_code,product,m.manufacturing_cost FROM dim_product p
join fact_manufacturing_cost m
on p.product_code=m.product_code
where manufacturing_cost=(select min(manufacturing_cost) from fact_manufacturing_cost)