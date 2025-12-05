------------------
-- Create tables
------------------
------------------
-- create schema
-----------------

create schema if not exists perfume;

--------------------------
-- create table: products 
---------------------------

create table if not exists perfume.perfumes (
perfume_id serial primary key,
perfume_name text,
brand text,
category text,
price numeric (8, 2),
supplier_id int
);

---------------------------
-- create table: suppliers
---------------------------

create table if not exists perfume.supplers (
supplier_id serial primary key,
supplier_name text,
country text,
contact_email text
);

-----------------------
-- create table: sales
-----------------------

create table if not exists perfume.sales (
sale_id serial primary key,
sale_date date,
perfume_id int
);

-----------------------
-- create table: inventory
-----------------------

create table if not exists perfume.inventory (
perfume_id int,
stock_quantity int,
reorder_level int,
last_restock_date  date
)