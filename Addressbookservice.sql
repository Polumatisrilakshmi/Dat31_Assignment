create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Sri','Polumati','Ravulapalem','WestGodavari',
'AndhraPradesh','534305','9963464457','polumatisrilakshmi@gmail.com' ),('Priya','kommavarapu','nidadavole','WestGodavari','AndhraPradesh','534305','9964562375','Kpriya@gmail.com')
,('Rishi','Ambati','Ravulapalem','EastGodavari','AndhraPradesh','533238','9494678777','arishi@gmail.com');
select *from addressBook;

update addressBook set phone = '9463451235' where firstname = 'Sri';

delete from addressBook where firstname = 'Priya';

select *from addressBook where city = 'Ravulapalem';

select count(*) from addressBook where state = 'Andhrapradesh';

select *from addressBook where state ='AndhraPradesh' order by firstname;

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1' where firstname = 'Sri';
update addressBook set bookname='Book2' where firstname = 'Rishi';
update addressBook set bookname='Book3' where firstname = 'Priya';
update addressBook set booktype='Family' where firstname = 'Sri';
update addressBook set booktype='Friends' where firstname = 'Priya';
update addressBook set booktype='Profession' where firstname = 'Rishi';


select booktype, count(*) from addressBook group by booktype;