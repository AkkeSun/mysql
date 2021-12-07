// DATA가 10 이상이면 true, 아니면 false를 출력 
SELECT IF ( 10 >= DATA, true, false ) FROM myDB


// birthday가 null이면 '-', 아니면 birthday를 출력
SELECT IF ( isnull(birthday), '-', birthday ) FROM member


// a가 1이면 one, 2면 two, 둘다 아니면 three 출력, 
SELECT CASE a 
	       WHEN '1' THEN 'one'
	       WHEN '2' THEN 'two'
	       ELSE'three'
       END
FROM table_name
