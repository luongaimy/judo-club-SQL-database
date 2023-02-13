--
-- SQL database dump
--

--
-- Data for Name: age_category; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.AGE_CATEGORY (AGE_CATEGORY_ID,NAME,FROM_AGE,TO_AGE) VALUES
	 (1,'Pre-cadet',8,14),
	 (2,'Cadets',14,17),
	 (3,'Juniors',17,20),
	 (4,'Seniors',20,NULL),
	 (5,'Masters',30,NULL);

--
-- Data for Name: personal_info; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.PERSONAL_INFO (PERSONAL_INFO_ID,LAST_NAME,FIRST_NAME,DATE_OF_BIRTH,GENDER,CITY,COUNTRY,EMAIL,PERSONAL_ADDRESS,TELEPHONE) VALUES
	 (1,'Ali','Alex','1993-11-06','Male','Paris','France','Null','Null','Null'),
	 (2,'Baron','Byron','1993-12-05','Male','Angers','France','Null','Null','Null'),
	 (3,'Christian','Cole','1994-12-04','Male','Aubigny','France','Null','Null','Null'),
	 (4,'Didier','Denis','1996-11-07','Male','Bordeaux','France','Null','Null','Null'),
	 (5,'El','Elvis','1999-10-04','Male','Boulogne','France','Null','Null','Null'),
	 (6,'France','Fred','1993-01-02','Male','Cambrai','France','Null','Null','Null'),
	 (7,'Gerald','George','1995-10-09','Male','Chatenoy le Royal','France','Null','Null','Null'),
	 (8,'Henri','Dunant','1994-12-01','Male','Frontignan','France','Null','Null','Null'),
	 (9,'Ilias','Iran','1998-02-09','Male','Gouesnou','France','Null','Null','Null'),
	 (10,'Kim','Kang','1994-11-08','Male','Heillecourt','France','Null','Null','Null');
INSERT INTO PUBLIC.PERSONAL_INFO (PERSONAL_INFO_ID,LAST_NAME,FIRST_NAME,DATE_OF_BIRTH,GENDER,CITY,COUNTRY,EMAIL,PERSONAL_ADDRESS,TELEPHONE) VALUES
	 (11,'Ling','Lang','2000-10-04','Male','Hyeres Var','France','Null','Null','Null'),
	 (12,'Ming','Mang','1996-09-01','Male','Jaunay Clan','France','Null','Null','Null'),
	 (13,'Nars','Nurse','1996-11-07','Male','Meaux','France','Null','Null','Null'),
	 (14,'Orion','Chocopie','1999-09-09','Male','Sens','France','Null','Null','Null'),
	 (15,'Pierre','Pomme','1996-01-04','Male','Serignan','France','Null','Null','Null'),
	 (16,'Query','Quynh','1998-03-06','Male','Strasbourg','France','Null','Null','Null'),
	 (17,'Read','Real','1995-03-04','Male','Strasbourg','France','Null','Null','Null'),
	 (18,'Seal','Salk','1994-12-03','Male','Tarn et Garonne','France','Null','Null','Null'),
	 (19,'Tea','Talk','1997-02-05','Male','Toulouse','France','Null','Null','Null'),
	 (20,'Unicorn','Union','1998-01-04','Male','Valenciennes','France','Null','Null','Null');
INSERT INTO PUBLIC.PERSONAL_INFO (PERSONAL_INFO_ID,LAST_NAME,FIRST_NAME,DATE_OF_BIRTH,GENDER,CITY,COUNTRY,EMAIL,PERSONAL_ADDRESS,TELEPHONE) VALUES
	 (21,'Venus','Very','1998-02-06','Male','Toulouse','France','Null','Null','Null'),
	 (22,'Vera','Wang','1998-05-17','Male','Toulouse','France','Null','Null','Null'),
	 (23,'Aria','Ara','1998-02-18','Female','Lyon','France','Null','Null','Null'),
	 (24,'Nara','Kim','1998-02-27','Female','Paris','France','Null','Null','Null'),
	 (25,'Vanessa','Park','1998-11-11','Female','Nice','France','Null','Null','Null'),
	 (26,'Kim','Yuna','1998-02-26','Female','Paris','France','Null','Null','Null'),
	 (27,'Hudton','Sandra','1998-11-10','Female','Montpellier','France','Null','Null','Null'),
	 (28,'Hera','Ken','1997-01-07','Female','Valenciennes','France','Null','Null','Null');

--
-- Data for Name: club; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.CLUB (CLUB_ID,CLUB_NAME,PRESIDENT_ID,CLUB_ADDRESS,CITY,COUNTRY) VALUES
	 (1,'Futur o Club Judo',1,'NULL','Paris','France'),
	 (2,'Budokan',2,'NULL','Angers','France'),
	 (3,'Entente Judo 77',3,'NULL','Aubigny','France'),
	 (4,'Bordeaux University',4,'NULL','Bordeaux','France'),
	 (5,'ACBB',5,'NULL','Boulogne','France'),
	 (6,'Section Judo College Paul Duez Cambrai',6,'NULL','Cambrai','France'),
	 (7,'Arts Martiaux Chatenoy le Royal',7,'NULL','Chatenoy le Royal','France'),
	 (8,'Frontignan la Peyrade Judo',8,'NULL','Frontignan','France'),
	 (9,'Judo Club Gouesnousien',9,'NULL','Gouesnou','France'),
	 (10,'Judo Club de Heillecourt',10,'NULL','Heillecourt','France');
INSERT INTO PUBLIC.CLUB (CLUB_ID,CLUB_NAME,PRESIDENT_ID,CLUB_ADDRESS,CITY,COUNTRY) VALUES
	 (11,'ASPTT Hyeres US Pradetane',11,'NULL','Hyeres Var','France'),
	 (12,'JCJC Judo Club Jaunay Clan',12,'NULL','Jaunay Clan','France'),
	 (13,'Cercle Mikage Judo de Meaux',13,'NULL','Meaux','France'),
	 (14,'Alliance Senonaise Judo',14,'NULL','Sens','France'),
	 (15,'Judo Club Serignan',15,'NULL','Serignan','France'),
	 (16,'University Strasbourg Cercle Judo Strasbourg',16,'NULL','Strasbourg','France'),
	 (17,'Strasbourg Universite Club',17,'NULL','Strasbourg','France'),
	 (18,'Judo Club Montechois',18,'NULL','Tarn et Garonne','France'),
	 (19,'Judo Club Fontenilles Leguevin',19,'NULL','Toulouse','France'),
	 (20,'Arts Martiaux Valenciennois',20,'NULL','Valenciennes','France');

--
-- Data for Name: judoka; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.JUDOKA (JUDOKA_ID,PERSONAL_INFO_ID,CLUB_ID,JOINED_DATE,PAYMENT_FEE_INFORMATION,MEDICAL_CERTIFICATE,AGE_CATEGORY_ID,WEIGHT,SIDE,BELT,MARK) VALUES
	 (1,1,1,'2021-10-10',true,true,4,62,'right','brown',60),
	 (2,2,2,'2003-10-09',true,true,4,63,'right','black',80),
	 (3,3,3,'2009-01-10',true,true,4,64,'right','brown',20),
	 (4,4,4,'2008-09-12',true,true,4,65,'left','brown',20),
	 (5,5,5,'2020-09-11',true,true,4,63,'left','brown',10),
	 (6,6,6,'1999-07-09',true,true,4,62,'right','black',30),
	 (7,7,7,'2019-08-09',true,true,4,64,'right','blue',30),
	 (8,8,8,'2010-07-09',true,true,4,61,'right','blue',40),
	 (9,9,9,'2023-09-09',true,true,4,62,'left','blue',20),
	 (10,10,10,'2006-10-09',true,true,4,61,'right','blue',10);
INSERT INTO PUBLIC.JUDOKA (JUDOKA_ID,PERSONAL_INFO_ID,CLUB_ID,JOINED_DATE,PAYMENT_FEE_INFORMATION,MEDICAL_CERTIFICATE,AGE_CATEGORY_ID,WEIGHT,SIDE,BELT,MARK) VALUES
	 (11,11,11,'2008-01-09',true,true,4,62,'right','brown',40),
	 (12,12,12,'2005-04-01',true,true,4,63,'right','black',80),
	 (13,13,13,'2012-09-11',true,true,4,64,'right','brown',100),
	 (14,14,14,'2020-01-10',true,true,4,65,'right','blue',80),
	 (15,15,15,'2019-03-09',true,true,4,66,'right','brown',80),
	 (16,16,16,'2010-07-02',true,true,4,66,'left','black',90),
	 (17,17,17,'2008-06-10',true,true,4,67,'right','brown',10),
	 (18,18,18,'2015-07-01',true,true,4,67,'both','blue',40),
	 (19,19,19,'2012-08-02',true,true,4,61,'both','brown',50),
	 (20,20,20,'2021-02-11',true,true,4,62,'right','brown',80);
INSERT INTO PUBLIC.JUDOKA (JUDOKA_ID,PERSONAL_INFO_ID,CLUB_ID,JOINED_DATE,PAYMENT_FEE_INFORMATION,MEDICAL_CERTIFICATE,AGE_CATEGORY_ID,WEIGHT,SIDE,BELT,MARK) VALUES
	 (21,21,2,'2022-04-11',true,true,4,64,'right','blue',80),
	 (22,22,2,'2023-05-02',true,true,4,64,'right','black',80);

--
-- Data for Name: competition; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.COMPETITION (COMPETITION_ID,ADDRESS,AGE_CATEGORY_ID,NUMBER_ROUNDS) VALUES
	 (1,'Stade de France',4,5);
	
--
-- Data for Name: contest_category; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.CONTEST_CATEGORY (CONTEST_CATEGORY_ID,WEIGHT_CATEGORY,GENDER) VALUES
	 (1,'61','Male'),
	 (2,'61','Male'),
	 (3,'61','Male'),
	 (4,'62','Male'),
	 (5,'62','Male'),
	 (6,'62','Male'),
	 (7,'62','Male'),
	 (8,'62','Male'),
	 (9,'63','Male'),
	 (10,'63','Male');
INSERT INTO PUBLIC.CONTEST_CATEGORY (CONTEST_CATEGORY_ID,WEIGHT_CATEGORY,GENDER) VALUES
	 (11,'63','Male'),
	 (12,'64','Male'),
	 (13,'64','Male'),
	 (14,'65','Male'),
	 (15,'66','Male'),
	 (16,'67','Male'),
	 (17,'Null','Male'),
	 (18,'Null','Male'),
	 (19,'Null','Male'),
	 (20,'Null','Male');
INSERT INTO PUBLIC.CONTEST_CATEGORY (CONTEST_CATEGORY_ID,WEIGHT_CATEGORY,GENDER) VALUES
	 (21,'Null','Male'),
	 (22,'Null','Male'),
	 (23,'Null','Male'),
	 (24,'Null','Male'),
	 (25,'Null','Male'),
	 (26,'Null','Male'),
	 (27,'Null','Male'),
	 (28,'Null','Male'),
	 (29,'Null','Male'),
	 (30,'Null','Male');
INSERT INTO PUBLIC.CONTEST_CATEGORY (CONTEST_CATEGORY_ID,WEIGHT_CATEGORY,GENDER) VALUES
	 (31,'Null','Male'),
	 (32,'Null','Male'),
	 (33,'Null','Male'),
	 (34,'Null','Male'),
	 (35,'Null','Male');
	
--
-- Data for Name: contest; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.CONTEST (CONTEST_ID,COMPETITION_ID,ROUND,CONTEST_CATEGORY_ID,CONTEST_RESULT_ID,JUDOKA_1_ID,JUDOKA_2_ID,REFEREE_ID) VALUES
	 (1,1,'1',1,1,8,10,23),
	 (2,1,'1',2,2,8,19,24),
	 (3,1,'1',3,3,10,19,25),
	 (4,1,'1',4,4,1,6,26),
	 (5,1,'1',5,5,1,9,27),
	 (6,1,'1',6,6,20,9,28),
	 (7,1,'1',7,7,11,20,23),
	 (8,1,'1',8,8,11,6,24),
	 (9,1,'1',9,9,5,12,25),
	 (10,1,'1',10,10,2,5,26);
INSERT INTO PUBLIC.CONTEST (CONTEST_ID,COMPETITION_ID,ROUND,CONTEST_CATEGORY_ID,CONTEST_RESULT_ID,JUDOKA_1_ID,JUDOKA_2_ID,REFEREE_ID) VALUES
	 (11,1,'1',11,11,2,12,27),
	 (12,1,'1',12,12,3,7,28),
	 (13,1,'1',13,13,13,2,23),
	 (14,1,'1',14,14,4,14,24),
	 (15,1,'1',15,15,15,16,25),
	 (16,1,'1',16,16,17,18,26),
	 (17,1,'2',17,17,8,5,27),
	 (18,1,'2',18,18,19,2,28),
	 (19,1,'2',19,19,10,12,23),
	 (20,1,'2',20,20,6,3,24);
INSERT INTO PUBLIC.CONTEST (CONTEST_ID,COMPETITION_ID,ROUND,CONTEST_CATEGORY_ID,CONTEST_RESULT_ID,JUDOKA_1_ID,JUDOKA_2_ID,REFEREE_ID) VALUES
	 (21,1,'2',21,21,1,13,25),
	 (22,1,'2',22,22,9,4,26),
	 (23,1,'2',23,23,20,15,27),
	 (24,1,'2',24,24,11,17,28),
	 (25,1,'3',25,25,8,1,23),
	 (26,1,'3',26,26,19,9,24),
	 (27,1,'3',27,27,10,20,25),
	 (28,1,'3',28,28,3,11,26),
	 (29,1,'4',29,29,8,20,27),
	 (30,1,'4',30,30,19,11,28);
INSERT INTO PUBLIC.CONTEST (CONTEST_ID,COMPETITION_ID,ROUND,CONTEST_CATEGORY_ID,CONTEST_RESULT_ID,JUDOKA_1_ID,JUDOKA_2_ID,REFEREE_ID) VALUES
	 (31,1,'4',31,31,1,9,23),
	 (32,1,'4',32,32,10,3,24),
	 (33,1,'4',33,33,1,19,25),
	 (34,1,'4',34,34,3,20,26),
	 (35,1,'5',35,35,8,11,27);
	
--
-- Data for Name: dojo; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.DOJO (DOJO_ID,DOJO_ADDRESS,CAPACITY_MAXIMUM) VALUES
	 (1,'Paris',100),
	 (2,'Chevilly Larue',200),
	 (3,'Paris',100),
	 (4,'Orly',20),
	 (5,'Thias',100),
	 (6,'Sceaux',50);

--
-- Data for Name: teacher; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.TEACHER (TEACHER_ID,PERSONAL_INFO_ID) VALUES
	 (1,1),
	 (2,3),
	 (3,5),
	 (4,7),
	 (5,9),
	 (6,11),
	 (7,13),
	 (8,15),
	 (9,17);	

--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO PUBLIC.EVENT (EVENT_ID,CONTEST_ID,NAME,JUDOKA_ID) VALUES
	 (1,1,'hansoku make',10),
	 (2,2,'Ippon',19),
	 (3,3,'hansoku make',19),
	 (4,4,'Ippon',6),
	 (5,5,'hansoku make',9),
	 (6,6,'Ippon',9),
	 (7,7,'hansoku make',11),
	 (8,8,'Ippon',11),
	 (9,9,'hansoku make',12),
	 (10,10,'Ippon',2);
INSERT INTO PUBLIC.EVENT (EVENT_ID,CONTEST_ID,NAME,JUDOKA_ID) VALUES
	 (11,11,'Ippon',12),
	 (12,12,'Ippon',3),
	 (13,13,'hansoku make',2),
	 (14,14,'hansoku make',14),
	 (15,15,'Ippon',15),
	 (16,16,'Ippon',17),
	 (17,17,'hansoku make',5),
	 (18,18,'Ippon',19),
	 (19,19,'hansoku make',10),
	 (20,20,'Ippon',3);
INSERT INTO PUBLIC.EVENT (EVENT_ID,CONTEST_ID,NAME,JUDOKA_ID) VALUES
	 (21,21,'Ippon',1),
	 (22,22,'hansoku make',4),
	 (23,23,'Ippon',20),
	 (24,24,'Ippon',11),
	 (25,25,'Ippon',8),
	 (26,26,'Ippon',19),
	 (27,27,'Ippon',20),
	 (28,28,'Ippon',11),
	 (29,29,'Ippon',8),
	 (30,30,'Ippon',11);
INSERT INTO PUBLIC.EVENT (EVENT_ID,CONTEST_ID,NAME,JUDOKA_ID) VALUES
	 (31,31,'Ippon',1),
	 (32,32,'Ippon',3),
	 (33,33,'Ippon',19),
	 (34,34,'Ippon',20),
	 (35,35,'Ippon',8);	

--
-- Data for Name: contest_result; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.CONTEST_RESULT (CONTEST_RESULT_ID,CONTEST_ID,WINNER_ID) VALUES
	 (1,1,8),
	 (2,2,19),
	 (3,3,10),
	 (4,4,6),
	 (5,5,1),
	 (6,6,9),
	 (7,7,20),
	 (8,8,11),
	 (9,9,5),
	 (10,10,2);
INSERT INTO PUBLIC.CONTEST_RESULT (CONTEST_RESULT_ID,CONTEST_ID,WINNER_ID) VALUES
	 (11,11,12),
	 (12,12,3),
	 (13,13,13),
	 (14,14,4),
	 (15,15,15),
	 (16,16,17),
	 (17,17,8),
	 (18,18,19),
	 (19,19,10),
	 (20,20,3);
INSERT INTO PUBLIC.CONTEST_RESULT (CONTEST_RESULT_ID,CONTEST_ID,WINNER_ID) VALUES
	 (21,21,1),
	 (22,22,9),
	 (23,23,20),
	 (24,24,11),
	 (25,25,8),
	 (26,26,19),
	 (27,27,20),
	 (28,28,11),
	 (29,29,8),
	 (30,30,11);
INSERT INTO PUBLIC.CONTEST_RESULT (CONTEST_RESULT_ID,CONTEST_ID,WINNER_ID) VALUES
	 (31,31,1),
	 (32,32,3),
	 (33,33,19),
	 (34,34,20),
	 (35,35,8);

--
-- Data for Name: training_session; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.TRAINING_SESSION (TRAINING_SESSION_ID,CLUB_ID,DOJO_ID,TEACHER_ID,SCHEDULE,AGE_CATEGORY_ID) VALUES
	 (1,1,1,1,'2022-11-11 11:00:00',4),
	 (2,1,2,2,'2022-12-11 11:00:00',4),
	 (3,1,3,3,'2023-01-01 11:00:00',4),
	 (4,1,1,4,'2023-02-01 11:00:00',4),
	 (5,1,2,5,'2023-03-01 11:00:00',4);

--
-- Data for Name: training_session_record; Type: TABLE DATA; Schema: public; Owner: -
--
INSERT INTO PUBLIC.training_session_record (training_session_record_ID,TRAINING_SESSION_ID,JUDOKA_ID) VALUES
	 (1,1,1),
	 (2,1,2),
	 (3,2,1),
	 (4,2,2),
	 (5,2,3),
	 (6,2,4),
	 (7,3,5),
	 (8,3,6),
	 (9,3,7),
	 (10,4,2);
INSERT INTO PUBLIC.training_session_record (training_session_record_ID,TRAINING_SESSION_ID,JUDOKA_ID) VALUES
	 (11,4,3),
	 (12,5,1),
	 (13,5,2),
	 (14,5,3),
	 (15,5,4),
	 (16,5,5),
	 (17,5,6),
	 (18,5,7);

--
-- SQL database dump complete
--
