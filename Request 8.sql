/*In which quarter of 2020, got the maximum total_sold_quantity? The final
output contains these fields sorted by the total_sold_quantity,
Quarter
total_sold_quantity*/
SELECT 
CASE
    WHEN date between '2019-09-01' and '2019-11-01' then "Q1"
    WHEN date between '2019-12-01'and '2020-02-01' then "Q2"
    WHEN date between '2020-03-01'and '2020-05-01' then "Q3"
    WHEN date between '2020-06-01' and '2020-08-01' then "Q4"
END as quarters,
sum(sold_quantity) total_sold_quantity
FROM fact_sales_monthly
where fiscal_year=2020
group by quarters
order by total_sold_quantity desc