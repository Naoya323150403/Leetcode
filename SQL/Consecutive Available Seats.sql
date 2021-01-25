select distinct c1.seat_id

from cinema c1,cinema c2

where (c1.seat_id = c2.seat_id +1 or c1.seat_id = c2.seat_id -1)
and (c1.free = 1 and c2.free = 1)


