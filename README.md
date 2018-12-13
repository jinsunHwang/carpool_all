# carpool_all

create SEQUENCE seq_board;

create table car_board (
    pnum number(10,0),
    title varchar2(200) not null,
    destination varchar2(200) not null,
    content varchar2(2000) ,
    writer varchar2(50) not null,
    meet varchar2(100),
    regdate date default sysdate,
    updatedate date default sysdate  
);

alter table car_board add constraint pk_board primary key (pnum);

insert into car_board (pnum,title,content,destination,writer)
values (seq_board.nextval, '테스트 제목','테스트 내용','연세대','user00');

select * from car_board order by regdate desc;

update car_board set meet='14:42' where pnum=2;


create table car_message (
    message_id number(11) not null,
    message_sender varchar2(50) default null,
    message_receiver varchar2(50) default null,
    message_content varchar2(500) default null,
    message_sendTime date default sysdate,
    chatroom_chatroom_id number(11) default null,
    user_user_id varchar2(50) default null,
    tutor_user_user_id varchar2(50) default null,
    class_class_id number(11) default null    
);

drop table car_message;

alter table car_message add constraint pk_message
primary key (message_id);

create table car_chatroom (
    chatroom_id number(11) not null,
    user_user_id varchar2(50) default null,
    tutor_user_user_id varchar2(50) default null,
    class_class_id number(11) default null
);

alter table car_chatroom add constraint pk_chatroom
primary key (chatroom_id);


create table car_member (
      userid varchar2(50) not null primary key,
      userpw varchar2(100) not null,
      username varchar2(100) not null,
      userphone varchar2(100) not null,
      regdate date default sysdate, 
      updatedate date default sysdate,
      enabled char(1) default '1');

create table car_member_auth (
    userid varchar2(50) not null,
    auth varchar2(50) not null,
    constraint fk_member_auth foreign key (userid) references car_member(userid)
);

create table persistent_logins ( 
    username varchar2(64) not null,
    series varchar2(64) primary key,
    token varchar2(64) not null,
    last_used timestamp not null
);


select * from car_member;

select * from car_member_auth;

insert into car_member(userid,userpw,username,userphone) values ('admin00','pw00','jinsun','01049063991');

insert into car_member_auth (userid,auth) values('ww','ROLE_USER');

