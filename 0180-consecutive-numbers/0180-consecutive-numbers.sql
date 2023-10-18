# Write your MySQL query statement below

SELECT DISTINCT A.NUM as ConsecutiveNums
FROM LOGS A
INNER JOIN LOGS B
ON A.ID + 1 = B.ID AND A.NUM = B.NUM
INNER JOIN LOGS C
ON A.ID + 2 = C.ID AND A.NUM = C.NUM;