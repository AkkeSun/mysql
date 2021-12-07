SELECT age,
       COUNT(*)    AS 총원,
       SUM(height)    합계,
       AVG(height)    평균,
       MAX(height)    최대값,
       MIN(height)    최소값
FROM student
WHERE age >= 31          -- 그룹 짓기 전 일반적인 조건
GROUP BY age
HAVING AVG(height) > 170 -- 그룹지어 사용된 집계함수의 조건
ORDER BY age;
