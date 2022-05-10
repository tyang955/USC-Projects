-- MySQL

CREATE TABLE EMPLOYEE(
e_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
first_name varchar(20) NOT NULL,
last_name varchar(20) NOT NULL,
office_number int(10),
floor_number int(10),
phone_number BIGINT(20),
email_address varchar(30)
);

insert into EMPLOYEE values(100,'Thomas','James',102,1,'1234567788','tj@gmail.com');
insert into EMPLOYEE values(101,'Jason','Wang',203,2,'3334567788','jw@yahoo.com');
insert into EMPLOYEE values(102,'Mayla','Yang',101,1,'5174535588','my@gmail.com');
insert into EMPLOYEE values(103,'Nisha','Li',105,1,'6034025364','nl@outlook.com');
insert into EMPLOYEE values(104,'Randy','Bing',104,1,'5172893365','rb@gmail.com');

insert into EMPLOYEE values(105,'David','Yu',102,1,'1432028010','dy@gmail.com');
insert into EMPLOYEE values(106,'Jerry','Hou',203,2,'3512362342','th@yahoo.com');
insert into EMPLOYEE values(107,'Tom','Yang',101,1,'6273413413','ty@gmail.com');
insert into EMPLOYEE values(108,'Kris','Wu',105,2,'6281923982','kw@outlook.com');
insert into EMPLOYEE values(109,'Joey','Zhao',104,2,'2148312683','zy@gmail.com');


insert into EMPLOYEE values(110,'Isaac','Yang',101,2,'2523535262','iy@gmail.com');
insert into EMPLOYEE values(111,'Judy','Liu',103,2,'236526262','jl@yahoo.com');
insert into EMPLOYEE values(112,'Burger','King',105,1,'5175746588','bk@gmail.com');
insert into EMPLOYEE values(113,'Lilly','Ma',205,1,'60374573364','lm@outlook.com');
insert into EMPLOYEE values(114,'Monica','Fang',102,1,'3858285939','mf@gmail.com');


insert into EMPLOYEE values(115,'Tianding','Zhang',101,1,'1545655688','tz@gmail.com');
insert into EMPLOYEE values(116,'Xiaotian','Pan',203,2,'4568522788','xp@yahoo.com');
insert into EMPLOYEE values(117,'Muzi','Li',101,1,'5235635588','mz@gmail.com');
insert into EMPLOYEE values(118,'Gongchang','Zhang',105,1,'8569456364','gz@outlook.com');
insert into EMPLOYEE values(119,'Shuifan','Pan',104,1,'6592893365','sp@gmail.com');




CREATE TABLE MEETING(
m_id INT AUTO_INCREMENT,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
PRIMARY KEY(m_id, e_id),
room_number int(10) NOT NULL,
floor_number int(10) NOT NULL,
start_at INT NOT NULL,
end_at INT NOT NULL
);

INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (1,101,110,1,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (1,102,110,1,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (1,103,110,1,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (1,104,110,1,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (1,105,110,1,13,16);

INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (2,102,110,1,16,18);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (2,103,110,1,16,18);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (2,104,110,1,16,18);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (2,105,110,1,16,18);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (2,106,110,1,16,18);

INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (3,104,110,1,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (3,105,110,1,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (3,106,110,1,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (3,107,110,1,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (3,108,110,1,10,13);

INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (4,106,210,2,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (4,107,210,2,13,6);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (4,108,210,2,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (4,109,210,2,13,16);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (4,110,210,2,13,16);


INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (5,110,211,2,8,10);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (5,111,211,2,8,10);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (5,112,211,2,8,10);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (5,113,211,2,8,10);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (5,114,211,2,8,10);

INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (6,115,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (6,116,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (6,117,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (6,118,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (6,119,211,2,10,13);


INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,100,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,101,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,102,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,103,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,104,211,2,10,13);


INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,105,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,106,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,107,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,108,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,109,211,2,10,13);


INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,110,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,111,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,112,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,113,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,114,211,2,10,13);


INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,115,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,116,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,117,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,118,211,2,10,13);
INSERT INTO `MEETING`(`m_id`, `e_id`, `room_number`, `floor_number`, `start_at`, `end_at`) VALUES (7,119,211,2,10,13);




CREATE TABLE NOTIFICATION(
n_id INT AUTO_INCREMENT PRIMARY KEY,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
n_date_report DATE NOT NULL,
mandatory boolean
);

INSERT INTO `NOTIFICATION`(`n_id`, `e_id`, `n_date_report`, `mandatory`) VALUES (1,109,'2021-10-03',true);
INSERT INTO `NOTIFICATION`(`n_id`, `e_id`, `n_date_report`, `mandatory`) VALUES (2,101,'2021-10-05',false);
INSERT INTO `NOTIFICATION`(`n_id`, `e_id`, `n_date_report`, `mandatory`) VALUES (3,103,'2021-10-04',false);
INSERT INTO `NOTIFICATION`(`n_id`, `e_id`, `n_date_report`, `mandatory`) VALUES (4,102,'2021-10-02',true);
INSERT INTO `NOTIFICATION`(`n_id`, `e_id`, `n_date_report`, `mandatory`) VALUES (6,104,'2021-10-05',false);
INSERT INTO `NOTIFICATION`(`n_id`, `e_id`, `n_date_report`, `mandatory`) VALUES (7,105,'2021-10-10',false);



CREATE TABLE SYMPTOM(
s_id INT AUTO_INCREMENT PRIMARY KEY,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
s_date_report DATE NOT NULL,
symptom_id INT NOT NULL
);


INSERT INTO `SYMPTOM`(`s_id`, `e_id`, `s_date_report`, `symptom_id`) VALUES (1,101,'2021-10-01',2);
INSERT INTO `SYMPTOM`(`s_id`, `e_id`, `s_date_report`, `symptom_id`) VALUES (2,102,'2021-10-11',2);
INSERT INTO `SYMPTOM`(`s_id`, `e_id`, `s_date_report`, `symptom_id`) VALUES (3,103,'2021-10-05',3);
INSERT INTO `SYMPTOM`(`s_id`, `e_id`, `s_date_report`, `symptom_id`) VALUES (4,104,'2021-10-06',4);
INSERT INTO `SYMPTOM`(`s_id`, `e_id`, `s_date_report`, `symptom_id`) VALUES (5,105,'2021-10-03',5);
INSERT INTO `SYMPTOM`(`s_id`, `e_id`, `s_date_report`, `symptom_id`) VALUES (6,106,'2021-10-02',1);



CREATE TABLE SCAN(
scan_id INT AUTO_INCREMENT PRIMARY KEY,
scan_date DATE NOT NULL,
scan_time TIME NOT NULL,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
temperature float(10) NOT NULL
);

INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (1,'2021-10-02',"15:52:00",109,38.2);
INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (2,'2021-10-02',"13:30:00",108,38.5);
INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (3,'2021-10-03',"16:50:00",111,36.0);
INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (4,'2021-10-03',"11:20:00",113,36.5);
INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (5,'2021-10-04',"17:30:00",119,37.2);
INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (6,'2021-10-04',"16:10:00",112,37.1);
INSERT INTO `SCAN`(`scan_id`, `scan_date`, `scan_time`, `e_id`, `temperature`) VALUES (7,'2021-10-05',"18:20:00",105,38.5);




CREATE TABLE TEST(
t_id INT AUTO_INCREMENT PRIMARY KEY,
t_location varchar(20) NOT NULL,
t_date DATE NOT NULL,
t_time TIME NOT NULL,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
t_result boolean
);

INSERT INTO `TEST`(`t_id`, `t_location`, `t_date`, `t_time`, `e_id`, `t_result`) VALUES (1,'Company','2021-10-10',"11:52:00",106,true);
INSERT INTO `TEST`(`t_id`, `t_location`, `t_date`, `t_time`, `e_id`, `t_result`) VALUES (2,'Company','2021-10-11',"12:52:00",107,false);
INSERT INTO `TEST`(`t_id`, `t_location`, `t_date`, `t_time`, `e_id`, `t_result`) VALUES (3,'Clinic','2021-10-12',"15:52:00",115,true);
INSERT INTO `TEST`(`t_id`, `t_location`, `t_date`, `t_time`, `e_id`, `t_result`) VALUES (5,'Clinic','2021-10-13',"16:52:00",114,false);
INSERT INTO `TEST`(`t_id`, `t_location`, `t_date`, `t_time`, `e_id`, `t_result`) VALUES (6,'Clinic','2021-10-10',"17:52:00",103,true);
INSERT INTO `TEST`(`t_id`, `t_location`, `t_date`, `t_time`, `e_id`, `t_result`) VALUES (7,'hospital','2021-10-02',"18:52:00",102,false);



CREATE TABLE COVID_CASE(
c_id INT AUTO_INCREMENT PRIMARY KEY,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
t_id INT,
FOREIGN KEY (t_id) REFERENCES TEST(t_id),
c_date DATE NOT NULL,
c_resolution varchar(20) NOT NULL
);


INSERT INTO `COVID_CASE`(`c_id`, `e_id`, `t_id`, `c_date`, `c_resolution`) VALUES (1,106,1,'2021-10-10','left the company');
INSERT INTO `COVID_CASE`(`c_id`, `e_id`, `t_id`, `c_date`, `c_resolution`) VALUES (2,115,3,'2021-10-12','left the company');
INSERT INTO `COVID_CASE`(`c_id`, `e_id`, `t_id`, `c_date`, `c_resolution`) VALUES (3,103,6,'2021-10-10','back to work');




CREATE TABLE HEALTHSTATUS(
h_id INT AUTO_INCREMENT PRIMARY KEY,
e_id INT,
FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id),
c_id INT,
FOREIGN KEY (c_id) REFERENCES COVID_CASE(c_id),
h_date DATE NOT NULL,
h_status varchar(20) NOT NULL
);

INSERT INTO `HEALTHSTATUS`(`h_id`, `e_id`, `c_id`,  `h_date`, `h_status`) VALUES (1,103,3,'2021-10-02','sick');
INSERT INTO `HEALTHSTATUS`(`h_id`, `e_id`, `c_id`,  `h_date`, `h_status`) VALUES (2,103,3,'2021-10-05','well');
INSERT INTO `HEALTHSTATUS`(`h_id`, `e_id`, `c_id`,  `h_date`, `h_status`) VALUES (3,115,2,'2021-10-02','sick');
INSERT INTO `HEALTHSTATUS`(`h_id`, `e_id`, `c_id`,  `h_date`, `h_status`) VALUES (4,106,1,'2021-10-02','sick');
INSERT INTO `HEALTHSTATUS`(`h_id`, `e_id`, `c_id`,  `h_date`, `h_status`) VALUES (5,115,2,'2021-10-02','hospitalized');
INSERT INTO `HEALTHSTATUS`(`h_id`, `e_id`, `c_id`,  `h_date`, `h_status`) VALUES (6,106,1,'2021-10-02','hospitalized');