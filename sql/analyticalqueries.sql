--------------------------
-- 1. monthly units sold
--------------------------
select date_trunc('month', sale_date) as months, 
count(*) as total_units_sold
from perfume.sales 
group by months
order by months;

-----------------------------------
-- 2. monthy sales by perfume name
-----------------------------------
select date_trunc('month', s.sale_date) as months,
p.perfume_name, count(*) as units_sold
from perfume.sales s
join perfume.perfumes p using(perfume_id) 
group by months, p.perfume_name
order by months, units_sold desc;

--------------------
-- 3. top 10 brands
--------------------
select p.perfume_name, p.brand_name,
count(*) as units_sold
from perfume.sales s
join perfume.perfumes p using(perfume_id)
group by p.perfume_name, p.brand_name
order by units_sold desc
limit 10;

-------------------------
-- 4. revenue by perfume
-------------------------
select p.perfume_name,
count(*) as units_sold, count(*) * p.price as revenue
from perfume.sales s
join perfume.perfumes p using(perfume_id) 
group by p.perfume_name, p.price
order by revenue desc;

------------------------------
-- 5. movement classification
------------------------------
with monthly as (
select p.perfume_id, count(*) / 7.0 as avg_monthly_units  
from perfume.sales s
join perfume.perfumes p using(perfume_id) 
group by p.perfume_id
)
select p.perfume_name, round(m.avg_monthly_units, 2),
case
when m.avg_monthly_units >= 9 then 'Fast Mover'
when m.avg_monthly_units between 5 and 8.99 then 'Medium Mover'
else 'Slow Mover'
end as movement_type
from monthly m
join perfume.perfumes p using(perfume_id) 
order by m.avg_monthly_units desc;

----------------------------
-- 6. supplier performance
----------------------------
select sp.supplier_name, count(*) as units_sold
from perfume.sales s
join perfume.perfumes p using(perfume_id) 
join perfume.suppliers sp using(supplier_id) 
group by sp.supplier_name
order by units_sold desc;

-------------------------------
-- 7. top 10 slowest sellers
-------------------------------
select p.perfume_name, count(*) as units_sold
from perfume.sales s
join perfume.perfumes p using(perfume_id) 
group by p.perfume_name
order by units_sold asc 
limit 10;

-----------------------------------
--8. estimated inventory turnover
-----------------------------------
select p.perfume_name,  sum(p.price) as revenue, i.stock_quantity
from perfume.sales s
join perfume.perfumes p using(perfume_id)
join perfume.inventory i using(perfume_id)
group by p.perfume_name, i.stock_quantity
order by i.stock_quantity;


