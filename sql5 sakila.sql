create database shadidb;

use shadidb;

CREATE table biodata(id int, name  varchar(20) , age int);

insert into biodata value ( 1 , 'Rahul' , 28), ( 2 , 'anjali' , 40), (3 , 'vashali' , 32), ( 4 , 'naina' , 23);

select age from biodata where name  = ' rahul ' ;

select char_length(name ) from biodata where name = 'rahul';

select name from biodata where char_length(name) = 5;

--select name from biodata where 
--char_length(name) = (select char_length(name) from biodata where name = 'Rahul');


select * from biodata where age = 28 ;

select * from biodata where age = ( select age from biodata where name = ' Rahul' );

select max(age) from biodata;

select * from biodata where age = 40;

select * from biodata where age = ( select max(age) from biodata);
