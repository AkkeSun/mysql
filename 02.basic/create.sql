-- 데이터베이스(스키마) 생성 
CREATE DATABASE sqlTest; 

-- 데이터베이스(스키마) 사용
USE sqlTest; 



-- 테이블 생성
-- DB명을 생략하면 default db에 테이블이 생성된다 
create table DB명.테이블명(
    필드명 int auto_increment primary key // 1부터 시작
    필드명 타입(사이즈) not null,
    Foreign key(필드명) references 클래스(컬럼)
);

-- 테이블 생성과 동시에 데이터 입력하기 
CREATE TABLE 
		(INSERT INTO data1, data2, data3 values('aa','bb','cc');


-- FK 생성
ALTER TABLE 
테이블명
add constraint 키값
foreign key 컬럼명
references 부모 테이블명 (부모컬럼명);
