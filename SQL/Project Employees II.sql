select t.project_id
from
(select p.project_id, rank() over(order by count(*) desc)rnk
from Project p
group by p.project_id)t
where t.rnk = 1