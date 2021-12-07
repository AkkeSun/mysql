-- equals
SELECT * FROM student WHERE name = 'aa';

-- like : 취미가 '음x...'인 학생
SELECT * FROM student WHERE hobby LIKE '음%';

-- 숫자비교
SELECT * FROM student WHERE age <= 35;
SELECT * FROM student WHERE age between 28 and 31; -- a 이상 b 이하

-- 두 조건 충족
SELECT * FROM student WHERE name = 'aa' and hobby like '음%';

-- 한 조건 충족
SELECT * FROM student WHERE age = 28 or age = 40;
SELECT * FROM student WHERE age IN (28, 40);
SELECT * FROM student WHERE age NOT IN (28, 40); -- 28 혹은 40이 아닌 경우
