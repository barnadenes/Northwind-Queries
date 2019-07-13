select company_name as company, array_agg(orders.order_id) as OrderIDs from customers
left join orders on customers.customer_id = orders.customer_id
group by company_name
order by company_name asc;
