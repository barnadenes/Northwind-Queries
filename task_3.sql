select company_name as company from suppliers
join products on suppliers.supplier_id = products.supplier_id
group by company_name
having count(category_id) = 5
order by company_name;
