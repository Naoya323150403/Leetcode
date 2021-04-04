with cte as(
select s.seller_id, sum(s.price) as total
from Sales s
group by s.seller_id)
select c.seller_id
from cte c
where c.total = (select max(total) from cte)