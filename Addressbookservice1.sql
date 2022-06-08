show databases;
create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(30),lastname varchar(30),address varchar(30),
city varchar(30),state varchar(20),zip varchar(20),phone varchar(30),email varchar(30));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Sri','Polumati','Ravulapalem','WG',
'AP','534305','9963464457','polumatisrilakshmi@gmail.com' ),('Priya','Kommarapu','Nidadavole','WG','AP','534305','8657169686','Kpriya@gmail.com')
,('Rishi','Ambati','Ravulapalem','EG','AP','533238','99634453452','ARishi@gmail.com');
select *from addressBook;

update addressBook set zip = 532645,city = 'Ravulapalem'  where  firstname = 'Sri';

delete from addressBook where firstname = 'Priya';

select *from addressBook where city = 'Ravulapalem';

select count(*) from addressBook where state = 'AP';

select *from addressBook where state = 'AP' order by firstname;

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1' where firstname = 'Sri';
update addressBook set bookname='Book2' where firstname = 'Priyanka';
update addressBook set bookname='Book3' where firstname = 'Rishi';
update addressBook set booktype='Family' where firstname = 'Sri';
update addressBook set booktype='Friends' where firstname = 'Rishi';
update addressBook set booktype='Profession' where firstname = 'Priyanka';


select booktype, count(*) from addressBook group by booktype;
use AddressBookService;
create table addressbookForFriends(firstname varchar(30),lastname varchar(30),address varchar(30),
city varchar(30),state varchar(20),zip varchar(20),phone varchar(30),email varchar(30));
desc addressbookForFriends;
insert into addressbookForFriends (firstname,lastname,address,city,state,zip,phone,email) values ('Ravi','Ambati','Ravalapalem','WG',
'AP','534238','9635624544','ARavi@gmail.com' ),('Nani','Polumati','Ravulapalem','WG','AP','534238','9956487682','PNani@gmail.com')
,('Afroz','shaif','Rajahmundry','WG','AP','415896','9986521452','sfroz@gmail.com');
select * from addressbookForFriends;
create table addressbookForFamily(firstname varchar(30),lastname varchar(30),address varchar(30),
city varchar(30),state varchar(20),zip varchar(20),phone varchar(30),email varchar(30));
insert into addressbookForFamily (firstname,lastname,address,city,state,zip,phone,email) values ('Abhi','puli','ndd','WG',
'AP','523469','9634657343','Abhi@gmail.com' ),('suri','pilli','ppalli','EG','AP','532465','9526532456','suri@gmail.com')
,('chandhu','malaka','ravaulapalem','EG','AP','534238','996532445364','chandhu@gmail.com');
select * from addressbookForFamily;

