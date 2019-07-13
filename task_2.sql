select company_name as company, count (company_name) as NumberOfProducts from suppliers 
inner join products on suppliers.supplier_id = products.supplier_id 
group by company_name 
order by count(company_name) desc, company; 
