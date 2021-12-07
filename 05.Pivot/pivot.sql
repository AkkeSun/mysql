-- SUM(if)를 활용하자 


CREATE TABLE pivotTest(
    uName VARCHAR(20),
    season VARCHAR(20),
    count int
);

INSERT INTO pivotTest(uName, season, count)
VALUES ('윤종신', '봄', 30),  ('윤종신', '여름', 22), ('윤종신', '가을', 25), ('윤종신', '겨울', 50),
       ('김종국', '봄', 24),  ('김종국', '여름', 21), ('김종국', '가을', 15), ('김종국', '겨울', 22),
       ('유재석', '봄', 23),  ('유재석', '여름', 30), ('유재석', '가을', 45), ('유재석', '겨울', 16);


SELECT uName,
       SUM(IF(season = '봄', count, 0))   AS 봄,
       SUM(IF(season = '여름', count, 0))    여름,
       SUM(IF(season = '가을', count, 0))    가을,
       SUM(IF(season = '겨울', count, 0))    겨울
FROM pivotTest
GROUP BY uName
