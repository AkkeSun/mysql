CREATE TABLE student(
    seq int auto_increment primary key,
    name varchar(50),
    age int,
    height int,
    hobby varchar(50)
);

INSERT INTO student(name, age, height, hobby)
values ('aa', 31, 165, '음악'), ('bb', 31, 170, '음악'),
       ('cc', 40, 180, '미술'), ('dd', 55, 167, '미술'),
       ('ee', 28, 183, '수학')
;
