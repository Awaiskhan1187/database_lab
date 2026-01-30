
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
values('andhari raat k  musafir','naseem hijazi','History',300,'01-01-2021',4,'fall of span'),
('aik aur bot shikn','naseem hijazi','History',300,'01-01-2021',4,'the qounquerer');

select * from book;


