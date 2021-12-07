-- ANY (or) : 나이가 40 혹은 55보다 많은 경우
SELECT * FROM student
WHERE age > ANY (SELECT age FROM student WHERE hobby = '미술');  

-- ALL (and) : 나이가 40보다 많고 55보다 많은 경우
SELECT * FROM student
WHERE age > ALL (SELECT age FROM student WHERE hobby = '미술' ); 

-- 서브쿼리문 안에서 LINIT : 55보다 많은 경우
SELECT * FROM student
WHERE age > (SELECT age FROM student WHERE hobby = '미술' ORDER BY age DESC LIMIT 1); 
