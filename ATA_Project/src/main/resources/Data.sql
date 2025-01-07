drop database ATAdb;

create database ATAdb;
use ATAdb;
desc users;

-- alter table users modify column dob DATE not null;
-- alter table booking_details modify column journey_date DATE not null;
-- alter table booking_details modify column booking_date DATE not null;


show tables;
-- vehicles Data
insert into vehicle values(1,'AC','Scania',2.3,'KA09ES5777',45,'Bus');
insert into vehicle values(2,'AC','Chevorlet',4.5,'KA09EY5007',8,'SUV');
insert into vehicle values(3,'Non-AC','Force Traveller',3.5,'KA05EJ5787',13,'TT');
insert into vehicle values(4,'AC','Volvo',5.3,'KA04EJ5667',20,'Mini Bus');
insert into vehicle values(5,'Non-AC','Tayota Etios',3.3,'KA55EY8767',4,'Car');
insert into vehicle values(6,'AC','Fortuner',6.5,'KA09EF5777',8,'Suv');
insert into vehicle values(7,'Non-AC','Mahindra S12',2.00,'KA09EX0977',10,'Tempo');

-- Driver data
insert into driver values(1,'Maharastra','MA56783829',9234567890,'Vinay',829010);
insert into driver values(2,'Gulbarga','KA56700829',9234561902,'Akash',675102);
insert into driver values(3,'Belgavi','SA56919829',6234926590,'Abhi',987435);
insert into driver values(4,'Chennai','RA56729829',9102930202,'Ravi',765142);
insert into driver values(5,'Rampur','UA56783209',9900233890,'Rahul',925345);

-- Route data
insert into route values(1,'Mysore',145,'Bangalore','3hrs 35min');
insert into route values(2,'Chennai',300,'Hyderabad','5hrs 45min');
insert into route values(3,'Bangalore',250,'Kochin','4hrs 15min');
insert into route values(4,'Hyderabad',578,'Coimbatore','7hrs 25min');
insert into route values(5,'Tumkur',135,'Bangalore','2hrs 50min');

-- Users Data
insert into users values(1,'Bangalore',35,'2000-04-21','Admin123@gmail.com','Admin','M','Kumar','Admin@123',9808763452,570096,'ADMIN');
insert into users values(2,'Bagalkot',35,'1998-02-06','Ram123@gmail.com','Ram','M','Kumar','Ram@123',9808762452,570026,'USER');
insert into users values(3,'Madras',35,'1995-12-14','Rohan123@gmail.com','Rohan','M','Kumar','Roh@123',9808763452,570036,'USER');
insert into users values(4,'Mumbai',35,'2003-09-16','Rahul123@gmail.com','Rahul','M','Kumar','Rah@123',9808763452,570046,'USER');
insert into users values(5,'Ramnagar',35,'2005-03-04','Arya123@gmail.com','Arya','M','Kumar','Ary@123',9808763452,570056,'USER');
insert into users values(6,'Chennai',35,'1992-08-18','Raj123@gmail.com','Raj','M','Kumar','Raj@123',9808763452,570016,'USER');

-- Bookings data
insert into booking_details values(1,'Jss school','2023-02-15','Booked','Nagarbavi','2023-03-28','successful',1555.99,1,2,1,2);
insert into booking_details values(2,'Temple road','2023-02-23','Canceled','Rajajinagar','2023-02-28','unsuccessful',8855.34,3,1,4,5);
insert into booking_details values(3,'Neladri','2023-02-28','Booked','Vijaynagar','2023-03-15','successful',4000.00,5,3,2,3);
insert into booking_details values(4,'Electronic city P1','2023-02-05','Canceled','Chamundi Hill','2023-03-20','unsuccessful',8000.56,4,4,3,6);
insert into booking_details values(5,'Naidu Nagar','2023-02-10','Booked','Banergatta Zoo','2023-03-27','successful',5555.55,2,5,2,4);

