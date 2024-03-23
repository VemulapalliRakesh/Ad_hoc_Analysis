with products as 
(
select division,dp.product_code,dp.product,sum(sold_quantity) total_sold_quantity,DENSE_RANK() OVER(PARTITION BY division order by sum(sold_quantity) desc) as rn
from dim_product dp
join 
fact_sales_monthly fs
on dp.product_code=fs.product_code
where fiscal_year=2021
group by product_code)
select * from products where products.rn<=3
