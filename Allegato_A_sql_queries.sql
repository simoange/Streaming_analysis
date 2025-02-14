-- drop database if exists on_the_movie ;

create database on_the_movie ; 
use on_the_movie; 


CREATE TABLE users_table (
    UsersId INT PRIMARY KEY auto_increment,
    Gender VARCHAR(10),
    Age INT,
    CAP INT,
    Work VARCHAR(30)
);

CREATE TABLE movie_table (
    MovieID INT primary key,
    Title VARCHAR(100),
    Genres VARCHAR(50),
    Year INT
);
CREATE TABLE genres_table (
	id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50)
);

CREATE TABLE movies_genres (
	id INT PRIMARY KEY AUTO_INCREMENT,
    genres_id INT,
    movie_id INT,
    foreign key(genres_id) references genres_table(id)
    on delete cascade on update cascade,
    foreign key(movie_id) references movie_table(MovieID)
    on delete cascade on update cascade
);

create table ratings_table(
	ID_rating int primary key auto_increment,
	UserID int,
	foreign key(UserID) references users_table(UsersId),
	MovieID int,
	foreign key(MovieID) references movie_table(MovieID),
	Rating int,
	Timestamp date);

create table age_range_table(
	AgeID int primary key auto_increment,
    Age_ranges varchar(20)
    );

insert into age_range_table(Age_ranges)
values("<18"), ("18-24"), ("25-34"),("35-44"),("45-54"),(">55");

alter table users_table add column age_range int, add foreign key(age_range) references age_range_table(AgeID);
    
select * from users_table;


    
    
       
