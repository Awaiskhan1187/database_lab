
create table if not exists Book(
book_title varchar(50) not null,
Author_name varchar(50),
Category varchar(50),
Number_of_pages INT,
Date date,
Rating INT
);

alter table book add column ID int primary key;