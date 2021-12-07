SET @DATA = 20211231;

-- 실수 -> 정수
SELECT age, CONVERT(AVG(height), SIGNED  INTEGER) AS height
from student
group by age;

SELECT age, CAST(AVG(height) AS SIGNED INTEGER) AS height
from student
group by age;


-- 날짜 형식으로 변환 
SELECT CAST( @DATA AS  DATE) AS DATE;
