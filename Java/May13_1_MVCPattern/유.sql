create table may10_lectureroom(
	l_name varchar2(10 char) primary key,
	l_location varchar2(10 char) not null,
	l_title varchar2(10 char) not null,
	l_start date not null,
	l_end date not null
);
insert into may10_lectureroom 
values('1���ǽ�', '�Ա� ��', '��Ʈ��ũ', to_date('20190101','YYYYMMDD'), to_date('20190601','YYYYMMDD'));
insert into may10_lectureroom 
values('2���ǽ�', '�Ա� ��', '��Ʈ��ũ', to_date('20190201','YYYYMMDD'), to_date('20190501','YYYYMMDD'));
insert into may10_lectureroom 
values('3���ǽ�', '�ްԽ� ��', '�ΰ�����', to_date('20190301','YYYYMMDD'), to_date('20190701','YYYYMMDD'));
insert into may10_lectureroom 
values('4���ǽ�', '�ްԽ� ��', '������', to_date('20190301','YYYYMMDD'), to_date('20190701','YYYYMMDD'));

create table may10_student(
	s_no number(5) primary key,
	s_name varchar2(10 char) not null,
	s_age number(3) not null,
	s_gender char(1 char) not null,
	s_address varchar2(10 char) not null,
	s_l_name varchar2(10 char) not null
);
create sequence may10_student_seq;

insert into may10_student
values(may10_student_seq.nextval, 'ȫ�浿', 20, '��', '����', '1���ǽ�');
insert into may10_student
values(may10_student_seq.nextval, '��浿', 21, '��', '����', '1���ǽ�');
insert into may10_student
values(may10_student_seq.nextval, '�̱浿', 23, '��', '����', '2���ǽ�');
insert into may10_student
values(may10_student_seq.nextval, '�ڱ浿', 24, '��', '�д�', '3���ǽ�');
insert into may10_student
values(may10_student_seq.nextval, '���浿', 25, '��', '��õ', '3���ǽ�');
insert into may10_student
values(may10_student_seq.nextval, '��浿', 23, '��', '����', '4���ǽ�');
insert into may10_student
values(may10_student_seq.nextval, '���浿', 21, '��', '����', '4���ǽ�');

create table may10_course(
	c_title varchar2(10 char) primary key,
	c_category varchar2(10 char) not null
);
insert into may10_course values('��Ʈ��ũ', '�����Ͼ�');
insert into may10_course values('�ΰ�����', '������');
insert into may10_course values('������', '������');

create table may10_pay(
	p_c_category varchar2(10 char) primary key,
	p_pay number(3) not null
);
insert into may10_pay values('�����Ͼ�', 30);
insert into may10_pay values('������', 35);


select * from may10_lectureroom;
select * from may10_student;
select * from may10_course;
select * from may10_pay;