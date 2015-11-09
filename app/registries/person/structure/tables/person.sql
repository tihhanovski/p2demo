CREATE TABLE person (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  code varchar(50) not null,
  firstname varchar(100) not null,
  lastname varchar(100) not null,
  birthday date not null,  
  memo text not null
) COMMENT='Persons'