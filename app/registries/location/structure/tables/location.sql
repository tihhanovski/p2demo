CREATE TABLE location (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  code varchar(50) not null,
  name varchar(100) not null,
  info text not null
) COMMENT='Locations'