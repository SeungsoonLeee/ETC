-- ���̺� �����
-- 		create table ���̺��(
--	 		�ʵ�� �ڷ��� �ɼ�,
--	 		�ʵ�� �ڷ��� �ɼ�,
--	 		...
-- 		);

-- ���̺� �����
--		drop table ���̺�� cascade constraint purge;

-- ������ �����
--		create sequence ��������;


-- C(Create) : ������ �����
-- 		insert into ���̺��(�ʵ��, �ʵ��, ...) 
-- 		values(��, ��, ...);

-- R(Read) : ������ �б�
-- 		select �ʵ��, �ʵ�� (as ����), ...
-- 		from ���̺��, ���̺��, ...
-- 		where ���ǽ�
--		order by �ʵ�� (desc), �ʵ�� (desc), ...;

-- U(Update) : ������ �����ϱ�
--		update ���̺��
--		set �ʵ��=��, �ʵ��=��, ...
--		where ����;

-- D(Delete) : ������ �����ϱ�
--		delete from ���̺��
--		where ����;

-- �������, ������, 1500��, ��������� �����̼���
insert into may08snack 
values(may08snack_seq.nextval, 
'�������', 1500, '������', sysdate);

-- ������, ����, 2000��, ��������� ���ÿ���11�ñ���
insert into may08snack 
values(may08snack_seq.nextval, 
'������', 2000, '����', to_date('2019050911', 'YYYYMMDDHH'));

-- ���� �ְ� ��?
select max(s_price) from may08snack;
-- ���ڴ� ��� �� ����?
select count(*) from MAY08SNACK;
-- ��� ���ڵ��� �̸�, ����, ������� ��ȸ
select s_name, s_price, s_exp from MAY08SNACK;
-- 1000�� �̻��� ���ڵ��� �̸�, ����, �ΰ��� ��ȸ
select s_name, s_price, s_price*0.1
from MAY08SNACK
where s_price >= 1000;
-- �̸��� 'Ĩ'���� ���ڵ��� ��հ� ��ȸ
select avg(s_price)
from MAY08SNACK
where s_name like '%Ĩ%';
-- ������� ������ ���� ���ڵ��� ��� ���� ��ȸ
-- ��������� 2019/05/09 ����10:06���� ū��
select * from may08snack
where s_exp > sysdate; 

sysdate -- ��¥(2019/05/09 ����10:10:10)
select sysdate from dual;

to_char(sysdate, 'YYYYMMDD') -- ���ڿ�(20190509)
select to_char(sysdate, 'YYYYMMDD') from dual;

-- ���ڿ�(20190509235959)
concat(to_char(sysdate, 'YYYYMMDD'), '235959')
select concat(to_char(sysdate, 'YYYYMMDD'), '235959')
from dual;

-- HH24 : 24�ð���
-- ��¥(20190509235959)
to_date(concat(to_char(sysdate, 'YYYYMMDD'), '235959'),'YYYYMMDDHH24MISS')
select to_date(concat(to_char(sysdate, 'YYYYMMDD'), '235959'),'YYYYMMDDHH24MISS')
from dual;

-- ��������� ���ñ����� ���ڵ��� ��� ���� ��ȸ
-- ���� ���� 9:50(o)
select * from may08snack
where s_exp <= to_date(concat(to_char(sysdate, 'YYYYMMDD'), '235959'),'YYYYMMDDHH24MISS');

-- ������� ���� ���ڵ��� �� ����
select count(*) from may08snack where s_exp < sysdate;

-- ��¥���
sysdate + 1 -- ��¥ �Ϸ� ����
sysdate + (1/24) -- �ѽð� ����
select sysdate + (1/24) from dual; 

-- ��������� ���ϱ����� ���� ��� ����
select * from may08snack
where s_exp <= to_date(concat(to_char(sysdate+1, 'YYYYMMDD'), '235959'),'YYYYMMDDHH24MISS');
------------------
-- 1000<����<2000 ���� ��� ����
-- ���� > 1000 && ���� < 2000
select * from may08snack
where s_price > 1000 and s_price < 2000;

-- ���￡ �ְų�, ������ �ִ� ȸ���� ��� ����
select * from MAY08COMPANY
where c_addr = '����' or c_addr = '����';
-- 100<������<300 ȸ��� ���
select count(*) from MAY08COMPANY
where c_employee > 100 and c_employee < 300;
-- '����'�� 'Ĩ'�� ���Ե� ���� ��հ�
select avg(s_price) from MAY08SNACK
where s_name like '%����%' or s_name like '%Ĩ%';
-- ������� 2019/01/01 ~ 2019/12/31�� ������ ��� ����
select * from MAY08SNACK
where 
	s_exp >= to_date('2019/01/01', 'YYYY/MM/DD')
	and
	s_exp <= to_date('20191231235959', 'YYYYMMDDHH24MISS');
	
-- �Ե����� ������ų� ���� ������ 2000�� �̸��� ������ ��հ�
select avg(s_price) from MAY08SNACK
where s_maker = '�Ե�' or s_price < 2000;
-------------------------------------------------------------
-- max, min, ... : select(o), where(x)
-- �ְ�
select max(s_price)
from MAY08SNACK;
-- subquery
-- ���� ��� ���� �̸�
select s_name
from MAY08SNACK
where s_price = 
	(
		select max(s_price)
		from MAY08SNACK
	);
-- ������ ���� ���� ȸ���̸�, ������, �ּ�
select c_name, c_employee, c_addr
from MAY08COMPANY
where c_employee = (
	select min(c_employee)
	from MAY08COMPANY
);
-- ��հ����� ��� �����̸�, ����, ȸ��
select s_name, s_price, s_maker
from MAY08SNACK
where s_price > (
	select avg(s_price)
	from MAY08SNACK
);

select s_maker
from MAY08SNACK
where s_name = '�������';
-- ������ڴ� � �������� ���������
select c_addr
from MAY08COMPANY
where c_name = (
	select s_maker
	from MAY08SNACK
	where s_name = '�������'
);

-- ȫ�浿�� ȸ�翡�� ���� �����̸�, ����
select s_name, s_price
from MAY08SNACK
where s_maker = (
	select c_name
	from MAY08COMPANY
	where c_ceo = '��浿'
);

-- �������� ���� ���� ȸ�翡�� ���� ���� ��հ�
select avg(s_price)
from MAY08SNACK
where s_maker = (
	select c_name
	from MAY08COMPANY
	where c_employee = (
		select max(c_employee)
		from MAY08COMPANY
	)
);

-- ���� ��� ���� ���� ȸ���̸�, ��ġ
select c_name, c_addr
from MAY08COMPANY
where c_name in (
	select s_maker
	from MAY08SNACK
	where s_price = (
		select max(s_price)
		from MAY08SNACK
	)
);

-- ��հ����� ��� ���� ���� ȸ���̸�, ��ġ
select c_name, c_addr
from MAY08COMPANY
where c_name in (
	select s_maker
	from MAY08SNACK
	where s_price > (
		select avg(s_price)
		from MAY08SNACK
	)
);
--------------------------------------------------------
-- join
select *
from MAY08SNACK, MAY08COMPANY
where s_maker = c_name;

-- ��� �����̸�, ����, ȸ���̸�, ��ġ, ������, �������
select s_name, s_price, s_maker, c_addr, c_employee, s_exp
from MAY08SNACK, MAY08COMPANY
where s_maker = c_name;

-- ������ 1000�� �̻��� �����̸�, ����, ȸ���̸�, ceo�̸�
select s_name, s_price, s_maker, c_ceo
from MAY08SNACK, MAY08COMPANY
where s_maker = c_name and s_price >= 1000;
-- ��հ����� ��� �����̸�, ����, ȸ���̸�, ȸ����ġ
select s_name, s_price, s_maker, c_addr
from MAY08COMPANY, MAY08SNACK
where c_name = s_maker 
	and s_price > (
		select avg(s_price)
		from MAY08SNACK
	);
-- '����'���� �����̸�, ����, ȸ���̸�, ������
select s_name, s_price, c_name, c_employee
from MAY08COMPANY, MAY08SNACK
where c_name = s_maker and s_name like '%����%';
-- ������� ���� �������� �����̸�, ����, ȸ���̸�, ȸ����ġ
select s_name, s_price, s_maker, c_addr
from MAY08COMPANY, MAY08SNACK
where c_name = s_maker 
	and s_exp = (
		select max(s_exp)
		from MAY08SNACK
	);
-- ���� ~ 20191231�ϱ��� ��������� ������ ��ü����(����,ȸ��)
sysdate
to_char(sysdate, 'YYYYMMDD')
to_date(to_char(sysdate, 'YYYYMMDD'), 'YYYYMMDD')

to_date('20191231235959', 'YYYYMMDDHH24MISS')

select *
from MAY08COMPANY, MAY08SNACK
where c_name = s_maker 
	and s_exp >= to_date(to_char(sysdate, 'YYYYMMDD'), 'YYYYMMDD')
	and s_exp <= to_date('20191231235959', 'YYYYMMDDHH24MISS');
	
-- ���� ���̺� ��ü��ȸ, �����̸� �����ټ�
select *
from MAY08SNACK
order by s_name;

-- ȸ�� ���̺� ��ü��ȸ, ������ �����ټ�
--	(������ ������ ������ ��������)
select *
from MAY08COMPANY
order by c_addr, c_employee desc;

-- ��հ����� ��� �����̸�, ����, ȸ���, ȸ����ġ
-- �����̸� �����ټ�
--	(������ ���� ��������, ������ ȸ��� �����ٿ���)

select s_name, s_price, s_maker, c_addr
from MAY08COMPANY, MAY08SNACK
where c_name = s_maker
	and s_price > (
		select avg(s_price)
		from MAY08SNACK
	)
order by s_name, s_price, s_maker desc;

-- rownum : �����ʵ�
--		rownum�� order by���� ����
--		1������ ��ȸ�ؾ�

-- ���� �����ټ� ����
-- 2��° ~ 7��°���� 
select *
from (
	select rownum as rn, s_name, s_price
	from (
		select *
		from MAY08SNACK
		order by s_name
	)
)
where rn >= 2 and rn <= 7;
---------------------------------------------------------
-- ������ڸ� 2500������ ����
update MAY08SNACK
set s_price = 2500
where s_name = '�������';

-- ����� ����, 1000������ ����
update MAY08COMPANY
set c_addr='����', c_employee=1000
where c_name='���';

-- ���� �� ���ڸ� ��¥
update MAY08SNACK
set s_price = 0
where s_price = (
	select min(s_price)
	from MAY08SNACK
);
-- ���￡�� ���� ���ڵ� ��������� 2020/01/01��
update MAY08SNACK
set s_exp = to_date('20200101', 'YYYYMMDD')
where s_maker in (
	select c_name
	from MAY08COMPANY
	where c_addr = '����'
);

-- '����'�� ���� ���� 10% ���
update MAY08SNACK
set s_price = s_price * 1.1
where s_name like '%����%';

-- ��հ����� ���� ���� ���� 20% �ٿ�
update MAY08SNACK
set s_price = s_price * 0.8
where s_price > (
	select avg(s_price)
	from MAY08SNACK
);
-- �������� ȸ�� ���� 10�� �ذ�
update MAY08COMPANY
set c_employee = c_employee - 10
where c_addr = '����';

-- ���� ��Ѱ����� ������ ��հ����� 1000�� ���Ѱɷ�
update MAY08SNACK
set s_price = (select avg(s_price) from may08snack) + 1000
where s_price = (
	select max(s_price) 
	from MAY08SNACK
);
-- ��� ���������� ���� ȸ���� �������� �����������
update MAY08COMPANY
set c_employee = (select avg(c_employee) from MAY08COMPANY)
where c_employee > (
	select avg(c_employee)
	from MAY08COMPANY
);
----------------------------------------------------------
-- ���� ��� ���� ����
delete from MAY08SNACK
where s_price = (
	select max(s_price) 
	from MAY08SNACK
);
-- ��� ���������� �������� ���� ȸ�� ����
delete from MAY08COMPANY
where c_employee < (
	select avg(c_employee)
	from MAY08COMPANY
);

select * from MAY08SNACK order by s_name;
select * from MAY08COMPANY order by c_name;



















