Select X.A "unique_products_2020",Y.B "unique_products_2021",round(((Y.B-X.A)/X.A)*100,2) percentage_chg FROM 
((select count(distinct(product_code)) A from fact_sales_monthly where fiscal_year=2020) X,
(select count(distinct(product_code)) B from fact_sales_monthly where fiscal_year=2021) Y)