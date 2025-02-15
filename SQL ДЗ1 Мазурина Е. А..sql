-- Создание всех табличек

create table customers (
  customer_id int 
  ,first_name varchar(20)
  ,last_name varchar(20)
  ,gender varchar(6)
  ,DOB text
  ,job_title text
  ,job_industry_category text
  ,wealth_segment text
  ,deceased_indicator varchar(1)
  ,owns_car varchar(3)
  ,address_id int
  ,property_valuation int

);

drop table customers;

create table transactions (
  transaction_id int 
  ,id int
  ,customer_id int
  ,transaction_date text
  ,online_order varchar(5)
  ,order_status varchar(10)
  ,list_price float8
  ,standard_cost float8
);

drop table transactions; 

create table adresses (
  adresses_id int 
  ,postcode int
  ,state text
  ,country text
  ,number_street varchar(8)
  ,street text
);

create table products (
  id int
  ,product_id int
  ,brand varchar(20)
  ,product_line varchar(10)  
  ,product_class varchar(10)
  ,product_size varchar(10)
);

--Устанавливаем колонки которые не могут быть пустыми (ключевые колонки)

alter table adresses alter column adresses_id set not null;

alter table products  alter column id set not null;

alter table customers  alter column customer_id set not null;

alter table transactions  alter column transaction_id set not null;

-- Теперь устанавливаем первичные ключи

alter table adresses add primary key(adresses_id);

alter table products  add primary key(id);

alter table customers  add primary key(customer_id);

alter table transactions  add primary key(transaction_id);
