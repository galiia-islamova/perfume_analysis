-----------------
-- 1. full view
-----------------
create or replace view perfume.viewbi_perfume_shop_main as
select s.sale_id, s.sale_date, p.perfume_id, p.perfume_name, p.brand_name,
p.category, p.price, i.stock_quantity, i.reorder_level,
sp.supplier_id, sp.supplier_name, sp.country as supplier_country
from perfume.sales s
join perfume.perfumes p using (perfume_id)
join perfume.inventory i using(perfume_id)
join perfume.suppliers sp using(supplier_id)*/

-------------------------------------
-- 2. ABC classification by perfume
-------------------------------------
create or replace view perfume.viewbi_abc_classification as
with revenue as (
select p.perfume_id, p.perfume_name, p.brand_name
sum(1 * coalesce(p.price,0)) as total_revenue 
from perfume.sales s
join perfume.perfumes p using(perfume_id)
group by p.perfume_id, p.perfume_name
),
ranked as (
select perfume_id, perfume_name,total_revenue,
total_revenue::numeric / sum(total_revenue) over() as revenue_share,
sum(total_revenue) over (order by total_revenue desc rows between unbounded preceding and current row) /
sum(total_revenue) over () as cumulative_share
from revenue
)
select perfume_id,perfume_name, total_revenue, revenue_share,
cumulative_share,
case
when cumulative_share <= 0.5 then 'A'
when cumulative_share <= 0.75 then 'B'
else 'C'
end as abc_class
from ranked
order by total_revenue desc;

-------------------------------------
-- 3. ABC classification by brand
-------------------------------------
create or replace view perfume.viewbi_abc_classification as
with revenue as (
select  p.brand_name,
sum(1 * coalesce(p.price,0)) as total_revenue 
from perfume.sales s
join perfume.perfumes p using(perfume_id)
group by  p.brand_name
),
ranked as (
select  brand_name, total_revenue,
total_revenue::numeric / sum(total_revenue) over() as revenue_share,
sum(total_revenue) over (order by total_revenue desc rows between unbounded preceding and current row) /
sum(total_revenue) over () as cumulative_share
from revenue
)
select  brand_name, total_revenue, revenue_share,
cumulative_share,
case
when cumulative_share <= 0.5 then 'A'
when cumulative_share <= 0.75 then 'B'
else 'C'
end as abc_class
from ranked
order by total_revenue desc;