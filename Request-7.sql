/*Get the complete report of the Gross sales amount for the customer “Atliq
Exclusive” for each month. This analysis helps to get an idea of low and
high-performing months and take strategic decisions.
The final report contains these columns:
Month
Year
Gross sales Amount*/
select concat(monthname(date),'(',year(date),')') month ,fs.fiscal_year, sum(gross_price*sold_quantity)  "Gross sales Ampount"
from fact_sales_monthly fs
join 
fact_gross_price fg on 
fs.product_code=fg.product_code
join dim_customer dc on fs.customer_code=dc.customer_code where dc.customer="Atliq Exclusive"
group by month,fs.fiscal_year
order by fs.fiscal_year
