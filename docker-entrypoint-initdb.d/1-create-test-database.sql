CREATE DATABASE test_db;

USE test_db;

CREATE TABLE test_db.test_db_table (
    id int primary key auto_increment, 
    payload varchar(256)
) engine=innodb;

INSERT INTO test_db.test_db_table(payload) VALUES('Confidential Data in none encrypted table');  

CREATE TABLE test_db.test_db_table_encrypted (
    id int primary key auto_increment, 
    payload varchar(256)
) engine=innodb encryption='Y';

INSERT INTO test_db.test_db_table_encrypted(payload) VALUES('Confidential Data in encrypted table'); 
