select*from job;

create table job(
img varchar2(60),
subject varchar(40),
company varchar(30),
location varchar(30),
reward varchar(30),
logtime DATE,
seq varchar(30));

insert into job values ('1','kor','coupang','�ѱ�/����','10000',sysdate,jobseq.nextval);

commit;
