DECLARE @T1 AS FLOAT;
SET @T1= (SELECT COUNT(*) FROM (SELECT DISTINCT requester_id, accepter_id FROM RequestAccepted) AS A);

DECLARE @T2 AS FLOAT;
SET @T2= (SELECT COUNT(*) FROM (SELECT DISTINCT sender_id, send_to_id FROM FriendRequest) AS B);

SELECT CASE @T2
            WHEN 0 THEN 0.00
            ELSE ROUND(@T1/@T2, 2)
       END AS ACCEPT_RATE;