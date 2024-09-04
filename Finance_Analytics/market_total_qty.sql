-- India, 2021 --> Gold
-- Srilanka, 2020 --> Silver

select
      sum(sold_quantity) as total_qty
from fact_sales_monthly s
join dim_customer c
on s.customer_code=c.customer_code
where get_fiscal_year(s.date)=2021 and c.market="India"
group by c.market	