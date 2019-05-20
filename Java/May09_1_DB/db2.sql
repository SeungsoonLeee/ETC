-- Oracle, MySQL, MariaDB, ... => RDB(Relational DB)
--		���̺��� ��������, �� ���踦 �߽����� �ذ�

-- ���õ�� ���������� DB
-- ����
--		1. ���ٿ��� �ϳ��� ������
--		2. �������� ������ ���� ���̺��� �и�
--		3. ���̺��� PK�� �ִ°� ����
�������� ���ﵿ123�� �ְ�,
	��������(��, �������, ��ä, ���)�� 5000���� �Ȱ�,
	�Ұ�ⵤ��(��, �Ұ��, ��ä, ���)�� 5500���� �Ȱ�,
	��ä���(��, ��ä, ��)�� 4000���� �Ȱ�,
	�Ұ����(��, �Ұ��, ��ä, ��)�� 4500���� �Ǵ�

�������� ���ʵ�123�� �ְ�,
	�Ұ�ⵤ��(��, �Ұ��, ��ä, ���)�� 6000���� �Ȱ�,
	�Ұ����(��, �Ұ��, ��ä, ��)�� 5000���� �Ǵ�

�츮 ������������� ��, �������, �Ұ��� ����,
	��ä�� ���ѻ�,
	����� �߱����� �����Ѵ�.

may09restaurant		may09ingredient
r_name	|r_addr		i_name	|i_from
PK		|NN			PK		|NN

may09menu									may09menu_seq
m_no 	|m_name	|m_ingredient				
PK,AI	|NN		|NN			

may09sell									may09sell_seq
s_no	|s_r_name	|s_m_name	|s_price
PK,AI	|NN			|NN			|NN
--------------------------------------------------------------
create table may09restaurant(
	r_name varchar2(10 char) primary key,
	r_addr varchar2(10 char) not null
);
insert into may09restaurant values('������', '���ﵿ123');
insert into may09restaurant values('������', '���ʵ�123');
--------------------------------------------------------------
create table may09menu(
	m_no number(5) primary key,
	m_name varchar2(10 char) not null,
	m_ingredient varchar2(10 char) not null
);
create sequence may09menu_seq;
insert into may09menu values(may09menu_seq.nextval, '��������', '��');
insert into may09menu values(may09menu_seq.nextval, '��������', '�������');
insert into may09menu values(may09menu_seq.nextval, '��������', '��ä');
insert into may09menu values(may09menu_seq.nextval, '��������', '���');

insert into may09menu values(may09menu_seq.nextval, '�Ұ�ⵤ��', '��');
insert into may09menu values(may09menu_seq.nextval, '�Ұ�ⵤ��', '�Ұ��');
insert into may09menu values(may09menu_seq.nextval, '�Ұ�ⵤ��', '��ä');
insert into may09menu values(may09menu_seq.nextval, '�Ұ�ⵤ��', '���');

insert into may09menu values(may09menu_seq.nextval, '��ä���', '��');
insert into may09menu values(may09menu_seq.nextval, '��ä���', '��ä');
insert into may09menu values(may09menu_seq.nextval, '��ä���', '��');

insert into may09menu values(may09menu_seq.nextval, '�Ұ����', '��');
insert into may09menu values(may09menu_seq.nextval, '�Ұ����', '�Ұ��');
insert into may09menu values(may09menu_seq.nextval, '�Ұ����', '��ä');
insert into may09menu values(may09menu_seq.nextval, '�Ұ����', '��');
--------------------------------------------------------------
create table may09ingredient(
	i_name varchar2(10 char) primary key,
	i_from varchar2(10 char) not null
);

insert into may09ingredient values('��','����');
insert into may09ingredient values('�������','����');
insert into may09ingredient values('�Ұ��','����');
insert into may09ingredient values('��ä','���ѻ�');
insert into may09ingredient values('���','�߱���');
insert into may09ingredient values('��','����');
--------------------------------------------------------------
create table may09sell(
	s_no number(5) primary key,
	s_r_name varchar2(10 char) not null,
	s_m_name varchar2(10 char) not null,
	s_price number(5) not null
);
create sequence may09sell_seq;
insert into may09sell values(may09sell_seq.nextval, '������', '��������', 5000);
insert into may09sell values(may09sell_seq.nextval, '������', '�Ұ�ⵤ��', 5500);
insert into may09sell values(may09sell_seq.nextval, '������', '��ä���', 4000);
insert into may09sell values(may09sell_seq.nextval, '������', '�Ұ�ⵤ��', 4500);

insert into may09sell values(may09sell_seq.nextval, '������', '�Ұ�ⵤ��', 6000);
insert into may09sell values(may09sell_seq.nextval, '������', '�Ұ����', 5000);
--------------------------------------------------------------
select * from may09restaurant;
select * from may09menu;
select * from may09ingredient;
select * from may09sell;
--------------------------------------------------------------
-- ���ο� ��� ��, �������
insert into MAY09INGREDIENT values('��', '�������');
-- �Ÿ޴� �߰���(��, ���)���
insert into MAY09MENU values(may09menu_seq.nextval, '�߰���', '��');
insert into MAY09MENU values(may09menu_seq.nextval, '�߰���', '���');
-- �߰����� ���������� 10000���� �Ǹ�
insert into MAY09SELL values(may09sell_seq.nextval, '������', '�߰���', 10000);
-- �߰����� ���������� 12000���� �Ǹ�
insert into MAY09SELL values(may09sell_seq.nextval, '������', '�߰���', 12000);
-- ������, �������� �Ĵ��� ���� ����
--		���������� 6000����
--		�߰����� 15000����
insert into MAY09RESTAURANT values('������','��������');
insert into MAY09SELL values(may09sell_seq.nextval, '������', '��������', 6000);
insert into MAY09SELL values(may09sell_seq.nextval, '������', '�߰���', 15000);
------------------------------------------------------------
-- ������ ������, ��ġ
select * 
from MAY09RESTAURANT
order by r_name;

-- �������� �޴���, ����
select s_m_name, s_price 
from may09sell 
where s_r_name = '������';

-- �������� �޴���, ���, ������
select m_name, m_ingredient, i_from
from may09menu, may09ingredient
where m_ingredient = i_name
	and m_name in (
		select s_m_name
		from may09sell
		where s_r_name='������'
	)
order by m_name;

-- ��ü �������� ��հ���
select avg(s_price) from may09sell where s_m_name = '��������';

-- ��ü ���ø��� �ְ�
select max(s_price)
from may09sell
where s_m_name like '%���';

-- ���� ��� �޴��� �̸�, ����, �Ǹ�����, ����, ������
select s_m_name, s_price, s_r_name, m_ingredient, i_from
from may09sell, may09menu, may09ingredient
where s_m_name = m_name and m_ingredient = i_name
	and s_price = (
		select max(s_price)
		from may09sell
	);
-- �߱��� ��� ���� �Ĵ��, �޴���
select s_r_name, s_m_name
from may09sell
where s_m_name in (
	select m_name
	from may09menu
	where m_ingredient in (
		select i_name
		from may09ingredient
		where i_from = '�߱���'
	)
);
-- ���������� ���� ��� �޴��̸�
select s_m_name
from may09sell
where s_price = (
	select max(s_price)
	from may09sell
	where s_r_name = '������'
) and s_r_name = '������';

-- �������� ���ʵ�999�� ����
update may09restaurant
set r_addr = '���ʵ�999'
where r_name = '������';

-- ��� �޴� ���� 10% �ø���
update may09sell
set s_price = s_price * 1.1;

-- ������� ���� �޴� ���� 20% �ø���
update may09sell
set s_price = s_price * 1.2
where s_m_name in (
	select distinct m_name
	from may09menu
	where m_ingredient in (
		select i_name
		from may09ingredient
		where i_from = '����'
	)
);

-- ����������� ���̻� ���ø�� ���� �ʱ��
delete from may09menu where m_name like '%���';
delete from may09sell where s_m_name like '%���';

-- �������� ����
delete from may09restaurant where r_name = '������';
delete from may09sell where s_r_name = '������';

select s_m_name, s_price, s_r_name, m_ingredient, i_from
from may09sell, may09menu, may09ingredient
where s_m_name=m_name and m_ingredient=i_name
order by s_r_name, s_m_name;

select s_m_name, s_price, s_r_name, r_addr
from may09sell, may09restaurant
where s_r_name = r_name and s_price <= 9000;

select * from may08snack;






