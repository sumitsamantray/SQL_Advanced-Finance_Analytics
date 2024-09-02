select 
s.date,
g.gross_price * sold_quantity as gross_price_total
from fact_sales_monthly s
join fact_gross_price g
on
g.product_code = s.product_code and
g.fiscal_year = get_fiscal_year(s.date)
where customer_code = 90002002
group by s.date