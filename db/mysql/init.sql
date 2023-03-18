GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'password';

use log; 

create table musical
(
    id         		 int  	       not null auto_increment primary key,
    interpark_id 	 varchar(255)  not null,
    interpark_path       varchar(255)  not null, 
    name	         varchar(255)  not null,
    place                varchar(255)  null,
    cast		 varchar(255)  not null, 
    start_time           date	       not null, 
    end_time             date	       not null, 
    poster_path          varchar(255)  not null, 
    create_date          datetime      default current_timestamp 
);
create table schedule
(
    id                   int           not null auto_increment primary key,
    musical_id           int	       not null,
    date                 varchar(255)  not null, 
    time                 varchar(255)  not null, 
    create_date          datetime      default current_timestamp
); 
create table casting
(
    id                   int           not null auto_increment primary key,
    musical_id           int           not null,
    date                 varchar(255)  not null, 
    time                 varchar(255)  not null, 
    cast                 varchar(255)  not null, 
    create_date          datetime      default current_timestamp
);
