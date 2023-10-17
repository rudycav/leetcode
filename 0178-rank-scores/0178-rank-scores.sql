# Write your MySQL query statement below

SELECT c.score, (
    SELECT COUNT(DISTINCT b.score)
    FROM Scores b
    WHERE b.score >= c.score) as 'rank'
FROM Scores c
ORDER BY c.score DESC