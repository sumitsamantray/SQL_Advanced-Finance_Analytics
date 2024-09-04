CREATE PROCEDURE `get_market_badge` (
     IN in_market varchar(45),
     IN in_fiscal_year year,
     OUT out_badge varchar(45)
)
BEGIN
     declare qty int default 0;
     
     # retrive total qty for given market+fyear
     select
      sum(sold_quantity) into qty
	from fact_sales_monthly s
	join dim_customer c
    on s.customer_code=c.customer_code
    where get_fiscal_year(s.date)=2021 and 
    c.market=in_market
    group by c.market;
    # deterine market badge
    if qty > 5000000 then 
    set out_badge = "Gold";
    else 
    set out_badge = "Silver";
    end if ;
END
