/* Write your T-SQL query statement below */

select s.product_id, sum(quantity) as total_quantity
from Sales as s
left join Product as p on (s.product_id = p.product_id)
group by s.product_id




