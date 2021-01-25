with OrdersCTE as (
select orders.sales_id,company.name
from company
inner join orders on company.com_id = orders.com_id
where company.name='RED'
)

select salesperson.name
from salesperson
where sales_id not in(select sales_id from OrdersCTE)