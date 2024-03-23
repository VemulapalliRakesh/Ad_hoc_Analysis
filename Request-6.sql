/*Generate a report which contains the top 5 customers who received an
average high pre_invoice_discount_pct for the fiscal year 2021 and in the
Indian market. The final output contains these fields,
customer_code
customer
average_discount_percentage8*/
 
select c.customer_code,c.customer,f.pre_invoice_discount_pct "average_discount_percentage" from dim_customer c
join
fact_pre_invoice_deductions f on 
c.customer_code=f.customer_code
where f.fiscal_year=2021 and c.market="India"
order by f.pre_invoice_discount_pct desc limit 5

