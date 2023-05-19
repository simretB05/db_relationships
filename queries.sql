insert into citizen(name,address,phone_number,date_of_birth) values('citizen_1','123street 1Av calgary','205-333-7865','2020-01-02');
insert into citizen(name,address,phone_number,date_of_birth) values('citizen_2','12street 4Av calgary','205-223-7005','2000-01-06');
insert into tax_account(citizen_id,date_created,account_number) values (1,'2012-02-16',123); 
insert into tax_car(citizen_id,release_year,model,make) values
(1,'2020','BT50','Mazda'),
(1,'2012','Cherry QQ','Cherry'),
(1,'2011','Yaris','Toyota'),
(1,'2018','F-40','Ford'); 

insert into student(name,date_of_birth)
values ('lula','1996-08-15'),('lu','2000-06-18'),('la','1967-12-12'),('ua','1995-01-01');
insert into class (name,`time`)
values('biophysics','10:00:00'),('math','11:00:00');
insert into student_class( student_id,class_id)
values(1,1),(2,2),(3,2),(4,1);

