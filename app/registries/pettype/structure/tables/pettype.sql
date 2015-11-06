CREATE TABLE pettype (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(100) not null,
  memo text not null,
  closed tinyint NOT NULL DEFAULT 0
) COMMENT='Pettypes'