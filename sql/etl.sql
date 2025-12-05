--------------
-- ETL 
--------------

select s.sale_id, s.sale_date, p.perfume_id, p.perfume_name, p.brand,
p.category, p.price, i.stock_quantity, i.reorder_level,
sp.supplier_id, sp.supplier_name, sp.country as supplier_country
from perfume.sales s
join perfume.perfumes p using (perfume_id)
join perfume.inventory i using(perfume_id)
join perfume.suppliers sp using(supplier_id)