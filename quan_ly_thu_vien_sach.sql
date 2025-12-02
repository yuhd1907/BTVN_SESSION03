create database LibraryDB;
create schema library;
set search_path to library;

create table Books
(
    book_id        int primary key,
    title          text,
    author         varchar(50),
    published_year int,
    available      bool default True
);

create table Members
(
    member_id int primary key,
    name      varchar(50),
    email     text unique,
    join_date date default current_date
);