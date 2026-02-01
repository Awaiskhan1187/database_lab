CREATE table if not exists book(
book_id SERIAL PRIMARY KEY,
title VARCHAR(200) NOT NULL,
author VARCHAR(100) NOT NULL,
category VARCHAR(50),
pages INTEGER CHECK (pages > 0),
date_finished DATE,
rating DECIMAL(3,1) CHECK (rating >= 0 AND rating <= 5.0),
notes TEXT
);

insert into book(title,author,category,pages,date_finished,rating,notes)
values('andhari raat k  musafir','naseem hijazi','History',300,'2021-01-01',4,'fall of span'),
('aik aur bot shikn','naseem hijazi','History',300,'2021-01-01',4,'the qounquerer');


create table if not exists members(
id int primary key,
name varchar(50) not null,
book_id int,
Foreign key(book_id) references book(book_id),
return varchar(10),
issue_date date
);


insert into members(name,book_id,return,issue_date)
values (
'Awais Khan',
1,
'',
'2021-01-01'
);

create sequence members_id_seq;
alter table members
alter column id set default nextval('members_id_seq' + id);
select * from book;

select name, count(name) as count
from members
group by name;

select * from members;

insert into members(name,book_id,return,issue_date) values('Awais Khan',
4,
'',
'2021-01-01');

insert into members(name,book_id,return,issue_date) values('Ayyan Khan',
4,
'',
'2021-01-01');

