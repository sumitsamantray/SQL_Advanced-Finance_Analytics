-- Month
-- Product Name
-- Variant
-- Sold quantity
-- Gross price per item
-- Gross price total

select 
s.date, s.product_code,  --Month, product name
p.product, p.variant, s.sold_quantity, 
g.gross_price,
round(g.gross_price*s.sold_quantity,2) as gross_price_total
from fact_sales_monthly s
join dim_product p
on p.product_code = s.product_code
join fact_gross_price g 
on 
g.product_code = s.product_code and
g.fiscal_year=get_fiscal_year(s.date)
where customer_code = 90002002 and
get_fiscal_year(date) = 2021
order by date asc
limit 100000
