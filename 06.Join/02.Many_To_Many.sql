// ========== 테이블 생성 ==============
CREATE TABLE product
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(50),
    price INT
);

CREATE TABLE owner
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- 중간 테이블 
CREATE TABLE cart
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    owner_id INT,
    product_cnt INT,
    FOREIGN KEY (product_id) REFERENCES product (id),
    FOREIGN KEY (owner_id) REFERENCES owner (id)
);

// ========== 데이터 입력 ==============
INSERT INTO product(productName, price)
VALUES ('텔레비젼', 5000), ('라디오', 2000), ('냉장고', 7000),
       ('선풍기', 2000), ('자전거', 4000), ('학용품', 500)
;

INSERT INTO owner(name, age)
VALUES ('박선양', 31), ('구예지', 31), ('노거현', 34)
;

INSERT INTO cart(owner_id, product_id, product_cnt)
VALUES (1, 1, 3), (1, 2, 4), (1, 3, 2), (1, 4, 3),
       (2, 1, 2), (2, 2, 4), (2, 3, 5), (2, 5, 2),
       (3, 1, 2), (3, 3, 2), (3, 5, 3), (3, 6, 2)
;


// ========== 쿼리문 ==============
SELECT o.name                AS 이름,
       p.productName            상품명,
       p.price                  가격,
       c.product_cnt            갯수,
       (p.price *c.product_cnt) 총액
FROM owner o
INNER JOIN cart c
    ON o.id = c.owner_id
INNER JOIN product p
    ON c.product_id = p.id
WHERE o.name='박선양'
;


SELECT o.name                AS 이름,
       p.productName            상품명,
       p.price                  가격,
       c.product_cnt            갯수,
       (p.price *c.product_cnt) 총액
FROM owner o
         INNER JOIN cart c
                    ON o.id = c.owner_id
         INNER JOIN product p
                    ON c.product_id = p.id
WHERE p.productName='텔레비젼'
;
