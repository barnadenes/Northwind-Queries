select company_name as Company, 
product_name as Product,
unit_price as Price from Products
join suppliers on suppliers.supplier_id = products.supplier_id
join (select supplier_id, max(products.unit_price) as price from products
group by products.supplier_id) as Filtered on products.supplier_id = Filtered.supplier_id
and products.unit_price = Filtered.price
order by unit_price desc;
