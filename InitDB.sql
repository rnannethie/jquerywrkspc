CREATE TABLE ajax_chat_application_1.user
(
   user_id     int NOT NULL AUTO_INCREMENT,
   username    varchar(30) NOT NULL  unique,
   password varchar(30) not null,
   firstname   varchar(60) NOT NULL,
   lastname    varchar(60) NOT NULL,
   status      varchar(20) NULL,
   PRIMARY KEY(user_id)
);

CREATE TABLE ajax_chat_application_1.user_chat_messages
(
msg_id int not null AUTO_INCREMENT,
msg_from_user_id int not null,
msg_to_user_id int not null,
msg varchar(4000) null,
status varchar(30) null,
primary key (msg_id)
);

CREATE TABLE user_group
(
group_id int not null AUTO_INCREMENT,
group_owner_user_id int NOT NULL,
group_child_id int not null,
primary key(group_id)
);

insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlyankur','apkc','ankur','israni','offline');
insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlyneha','apkc','neha','choudhri','offline');
insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlygopal','apkc','gopal','israni','offline');
insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlykavita','apkc','kavita','israni','offline');
insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlysanket','apkc','sanket','israni','offline');
insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlyrenu','apkc','renu','israni','offline');
insert into ajax_chat_application_1.user(username,password,firstname,lastname,status) values('onlybadri','apkc','badri','prasad','offline');

insert into user_group(group_owner_user_id,group_child_id) values(1,3);
insert into user_group(group_owner_user_id,group_child_id) values(1,4);



select usr.user_id,usr.username,usr.firstname,usr.lastname,usr.status,
grp.group_child_id
from user usr inner join user_group grp on usr.user_id=grp.group_owner_user_id
and usr.user_id =(select user_id from user where username='onlyankur')