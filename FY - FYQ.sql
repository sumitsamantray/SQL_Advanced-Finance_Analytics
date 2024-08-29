
select * from fact_sales_monthly
where 
customer_code=90002002 and 
-- fisacl year formula
get_fiscal_year(date)=2021 and 
-- Quartar Months-- 
get_fiscal_quarter(date)="q4"
order by date asc;
limit 1000
