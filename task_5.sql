select company_name as Company, 
product_name as Product,
unit_price as Price from Products
join suppliers on suppliers.supplier_id = products.supplier_id
join (select supplier_id, max(products.unit_price) from products
group by products.supplier_id) as Done on products.supplier_id = Done.supplier_id
and products.unit_price = Done.unit_price
order by unit_price desc;
