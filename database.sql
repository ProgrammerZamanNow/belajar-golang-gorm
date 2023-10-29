create table sample
(
    id   varchar(100) not null,
    name varchar(100) not null,
    primary key (id)
) engine = InnoDB;

select *
from sample;

create table users
(
    id         varchar(100) not null,
    password   varchar(100) not null,
    name       varchar(100) not null,
    created_at timestamp    not null default current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp,
    primary key (id)
) engine = InnoDB;

select *
from users;

alter table users
    rename column name to first_name;

alter table users
    add column middle_name varchar(100) null after first_name;

alter table users
    add column last_name varchar(100) null after middle_name;

select *
from users;

create table user_logs
(
    id         int auto_increment,
    user_id    varchar(100) not null,
    action     varchar(100) not null,
    created_at timestamp    not null default current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp,
    primary key (id)
) engine = innodb;

select *
from user_logs;

delete
from user_logs;

alter table user_logs
    modify created_at bigint not null;

alter table user_logs
    modify updated_at bigint not null;

select *
from user_logs;

desc user_logs;

create table todos
(
    id          bigint       not null auto_increment,
    user_id     varchar(100) not null,
    title       varchar(100) not null,
    description text         null,
    created_at  timestamp    not null default current_timestamp,
    updated_at  timestamp    not null default current_timestamp on update current_timestamp,
    deleted_at  timestamp    null,
    primary key (id)
) engine = innodb;

select *
from todos;

create table wallets
(
    id         varchar(100) not null,
    user_id    varchar(100) not null,
    balance    bigint       not null,
    created_at timestamp    not null default current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp,
    primary key (id),
    foreign key (user_id) references users (id)
) engine = innodb;

desc wallets;

create table addresses
(
    id         bigint       not null auto_increment,
    user_id    varchar(100) not null,
    address    varchar(100) not null,
    created_at timestamp    not null default current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp,
    primary key (id),
    foreign key (user_id) references users (id)
) engine = innodb;

desc addresses;

create table products
(
    id         varchar(100) not null,
    name       varchar(100) not null,
    price      bigint       not null,
    created_at timestamp    not null default current_timestamp,
    updated_at timestamp    not null default current_timestamp on update current_timestamp,
    primary key (id)
) engine = innodb;

desc products;

create table user_like_product
(
    user_id    varchar(100) not null,
    product_id varchar(100) not null,
    primary key (user_id, product_id),
    foreign key (user_id) references users (id),
    foreign key (product_id) references products (id)
) engine = innodb;

desc user_like_product;

select * from addresses;

SELECT * FROM `wallets` WHERE id = '2' LIMIT 1;

SELECT * FROM `users` WHERE `users`.`id` = '2';

SELECT * FROM `addresses` WHERE `addresses`.`user_id` = '2';

select * from wallets;

select count(id) from users;