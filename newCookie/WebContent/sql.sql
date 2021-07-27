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

2. QnA ���̺�

2-1. QnA ���̺� ����
create table QnA(
q_number number,
q_main varchar2(100) not null,
q_sub varchar2(100),
constraint QnA_q_number_pk primary key(q_number),
constraint QnA_q_main_uk unique(q_main)
)

2-2. QnA ������ ����
create sequence qna_seq
		increment by 1

2-3. �׽�Ʈ �� �ֱ�
insert into qna values(qna_seq.nextval,'test','test')

drop table qna cascade constraints;
drop sequence qna_seq;

2-4. Ȯ��
select * from qna

2-5. �� �ֱ�
insert into qna values(qna_seq.nextval,'�ڽŸ��� ��Ʈ���� �ؼҹ��� �ֳ���?','');
insert into qna values(qna_seq.nextval,'Ÿ�ΰ� �����ؼ� ������Ʈ�� �غ� ������ �ֳ���?','�־��ٸ� ������Ʈ �� �ڽ��� ������ �����̿�����?');
insert into qna values(qna_seq.nextval,'���� ��ư��鼭 ���� �⻼�� ���� �����̾�����?','');
insert into qna values(qna_seq.nextval,'� ���� ���� �����̾�����?','');
insert into qna values(qna_seq.nextval,'��� ������ �ذ��ϴ� ����� �����ΰ���?','Ÿ���� ��� ���� ���� �ֳ���?');
insert into qna values(qna_seq.nextval,'���� ���������� �ߴ� ���� �����ΰ���?','����� �����߳���?');




