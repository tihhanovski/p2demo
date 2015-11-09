create table pet(
id int not null auto_increment primary key,
typeId int not null,
ownerId int not null,
name varchar(100),
birthday date,
weight double
);