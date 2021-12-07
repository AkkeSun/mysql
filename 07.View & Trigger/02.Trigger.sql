-- 해당 테이블의 기능이 실행되면 자동으로 실행시킬 쿼리 설정

DELIMITER $$

CREATE TRIGGER trg_test2   -- 트리거 이름
    AFTER DELETE           -- 해당 쿼리가 실행되면 트리거 실행  
    ON testTable2          -- 해당 테이블 명 
    FOR EACH ROW           -- 각 행마다 실행됨 
BEGIN
    INSERT INTO deleteTableBackup (name, age, fatherSeq)
    VALUES (OLD.name, OLD.age, OLD.fatherSeq);
end $$
DELIMITER ;
