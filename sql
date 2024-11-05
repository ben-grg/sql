create database city; 
use city;
create table city(id int, name varchar(17), countrycode varchar(3), district varchar(20),population bigint );

insert into city(id,name, countrycode, district, population) -- insert multiple datas:
values
(6 ,'Rotterdam' ,'NLD', 'Zuid-Holland', 593321),
(19, 'Zaanstad','NLD', 'Noord-Holland', 135621),
(214, 'Porto Alegre', 'BRA', 'Rio Grande do Sul', 1314032),
(397, 'Lauro de Freitas', 'BRA', 'Bahia', 109236),
(547, 'Dobric' ,'BGR', 'Varna', 100399),
(552, 'Bujumbura' ,'BDI', 'Bujumbura', 300000),
(3815, 'El Paso','USA', 'Texas', 563662),
(3965, 'Corona', 'USA' ,'California', 124966 );   

select * from city;
select id, name from city;
delete from city where id = 6;
select * from city;
update city set countrycode = 'BEL', population = 547899 where id = 547;-- update row with id 547:
select * from city where id = 547;
alter table city add(EU varchar(6)); -- adding column for eu or non-eu
insert into city(EU) values ('EU');
select * from city;
update city set EU = 'NON EU' where id = 3815 ;
alter table city modify column EU varchar(7);
alter table city rename column EU to member;
alter table city add primary key(id);
delete from city where id is null;
