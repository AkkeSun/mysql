// ------------생성 -------------

-- DELIMITER : 트랜젝션 처리 
DELIMITER $$
    CREATE procedure getAccount( val1 varchar(255) )
    BEGIN
				-- 로컬변수
        DECLARE val2 int;  

        -- 로컬변수 값 할당
        SELECT COUNT(*)  
        INTO val2
        FROM testTable;
        
        -- 쿼리문 실행 
        INSERT INTO testTable3 values (val2);
        SELECT * FROM testTable where team = val1;
    END $$
DELIMITER ;


// ------------ 사용 -------------
CALL getAccount('aa');






// ------------ 반복문 예제 -------------
DELIMITER $$
CREATE PROCEDUREloop_test(cnt INT)
BEGIN
    DECLARE k INT DEFAULT 0;

    WHILE(k < cnt) DO
        INSERT INTO loopTable(val) values (k);
            SET k = k+1 ;
    END WHILE;

    SELECT * FROM loopTable;
END$$
DELIMITER ;

CALLloop_test(10);
