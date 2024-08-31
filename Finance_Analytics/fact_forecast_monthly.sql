select * 
from fact_sales_monthly s
join dim_product p
on p.product_code = s.product_code
where
customer_code=90002002 and
get_fiscal_year(date)=2021
order by date asc
limit 100000