-- 변수의 선언 (선언된 변수를 한꺼번에 읽어준다) 
SET @DATA1 = 3 ;
SET @DATA2 = 30 ;

-- 변수 읽기 
SELECT @DATA1 ;
SELECT @DATA1 + @DATA2 AS SUM;

-- 변수값 쿼리에 집어넣기
PREPARE myQuery
    FROM 'SELECT * FROM student where age > ?' ;
EXECUTE myQuery USING @DATA2;
