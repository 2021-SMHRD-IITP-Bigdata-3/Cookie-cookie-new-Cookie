1. ȸ�� ���̺�

1-1. ȸ�� ���̺� ����

create table member(
m_id varchar2(20),
m_pw varchar2(20) not null,
name varchar2(10) not null,
nickname varchar2(10) not null,
birth date not null,
gender varchar2(5) not null,
email varchar2(20) not null,
constraint member_m_id_pk primary key(m_id),
constraint member_gender_ck check(gender in ('M', 'W')),
constraint member_nickname_uk unique(nickname),
constraint member_email_uk unique(email)
);


1-2. �׽�Ʈ �� �ֱ�
insert into member values('test', 'test', 'test', 'test', '21-07-26', 'W', 'test')

insert into member values(?,?,?,?,?,?,?)

1-3. Ȯ��
select * from member

