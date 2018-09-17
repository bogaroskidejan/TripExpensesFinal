

drop table users cascade constraints;
drop table employees cascade constraints;
drop table locations cascade constraints;
drop table tripbills cascade constraints;
drop table businesstrips cascade constraints;
drop table authorities cascade constraints;
drop table bills cascade constraints;

    ADD CONSTRAINT authorities_users_fk FOREIGN KEY ( users_username )
        REFERENCES users ( username );
        CREATE SEQUENCE authorities_seq
  minvalue 2
  maxvalue 100000
 START WITH     2
 INCREMENT BY   1
nocache
 NOCYCLE;
  CREATE SEQUENCE locations_seq
 minvalue 1
  maxvalue 100000
 START WITH     1
 INCREMENT BY   1
nocache
 NOCYCLE;
 CREATE SEQUENCE employees_seq
  minvalue 2
  maxvalue 100000
 START WITH     2
 INCREMENT BY   1
nocache
 NOCYCLE;
 
  CREATE SEQUENCE businesstrips_seq
  minvalue 1
  maxvalue 100000
 START WITH     1
 INCREMENT BY   1
nocache
 NOCYCLE;

CREATE SEQUENCE tripbills_seq
  minvalue 1
  maxvalue 100000
 START WITH     1
 INCREMENT BY   1
nocache
 NOCYCLE;

CREATE SEQUENCE bill_seq
  minvalue 1
  maxvalue 100000
 START WITH     1
 INCREMENT BY   1
nocache
 NOCYCLE;
 
 CREATE SEQUENCE user_seq
  minvalue 2
  maxvalue 100000
 START WITH    2
 INCREMENT BY   1
nocache
 NOCYCLE;
 


 drop sequence businesstrips_seq;
 drop sequence bill_seq;
 drop sequence tripbills_seq;
 drop sequence employees_seq;
 drop sequence locations_seq;
 drop sequence authorities_seq;
drop sequence user_seq;

select * from tripbills;
select * from users;
select * from businesstrips;
truncate table businesstrips;
insert into employees values(1,'Stefan Vasic','stefan.vasic1987@gmail',123343232,32233,1);
insert into users values('StefanV87','admin',1,1,1);
select * from employees;
select * from authorities;
insert into authorities values('admin',1,'StefanV87');
