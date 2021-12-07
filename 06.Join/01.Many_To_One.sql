
// ========== 테이블 생성 ==============
CREATE TABLE employee
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE member
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    employeeId INT,
    FOREIGN KEY (employeeId) REFERENCES employee(id)
);


// ========== 데이터 입력 ==============
INSERT INTO employee(name)
VALUES ('삼성'), ('LG')
;

INSERT INTO member(name, employeeId)
VALUES ('박선양', 1), ('구예지', 2), ('노거현', 1)
;


// ========== 쿼리문 ==============
SELECT mem.name AS 이름,
       emp.name AS 회사
FROM member mem
INNER JOIN employee emp
ON mem.employeeId = emp.id
WHERE emp.name = '삼성'
;
