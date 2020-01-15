create table cuser(
did varchar2(6) primary key,
name varchar2(12) not null,
age number(2) default 19,
constraint check_cuser_age_81_down check (age < 81)
)

create table cinfo(
did varchar2(12), 
cnum number(4) primary key,
cclr varchar2(12) default null
)
alter table cinfo add constraint id_fk foreign key (did) references cuser(did)

ALTER TABLE cinfo ADD CONSTRAINT id_fk FOREIGN KEY (did)  
REFERENCES cuser(did) ON DELETE CASCADE 



insert into CUSER values('d02','kim',22);
insert into CUSER values('d03','lee',32);
insert into CUSER values('d04','oh',52);
insert into CUSER values('d05','ho',62);
insert into CUSER values('d07','hee',64);
insert into CUSER values('d08','huk',78);
insert into CUSER values('d09','huk',78);





insert into cinfo values('d02',7577,'blue');
insert into cinfo values('d02',7571,'blue');
insert into cinfo values('d02',7572,'blue');
insert into cinfo values('d03',8327,'blue');
insert into cinfo values('d04',8527,'blue');
insert into cinfo values('d07',7351,'red');
insert into cinfo values('d08',8727,'gray');
commit



select * from cuser inner join cinfo on cuser.did = cinfo.did -- 이너조인
select * from cuser join cinfo on cuser.did = cinfo.did --equi 조인
select * from cuser, cinfo where cuser.did = cinfo.did --equi 조인
select * from cuser inner join cinfo using (did) --equi 조인
select * from cuser natural join cinfo --natural join


select * from cuser left outer join cinfo on cuser.did = cinfo.did
select * from cinfo right outer join cuser on cinfo.did = cuser.did
select * from cinfo full outer join cuser on cinfo.did = cuser.did





select * from cuser
select * from cinfo
 


delete from cuser WHERE did='d02';
delete from cinfo WHERE did='d02';
delete from cinfo WHERE cnum='d02';



drop table cinfo 
drop table cuser



