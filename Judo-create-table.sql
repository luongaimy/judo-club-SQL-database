--
-- SQL database dump
--

DROP TABLE IF EXISTS training_session_record;
DROP TABLE IF EXISTS training_session;
DROP TABLE IF EXISTS contest_result;
DROP TABLE IF EXISTS event;
DROP TABLE IF EXISTS teacher;
DROP TABLE IF EXISTS dojo;
DROP TABLE IF EXISTS contest;
DROP TABLE IF EXISTS contest_category;
DROP TABLE IF EXISTS competition;
DROP TABLE IF EXISTS judoka;
DROP TABLE IF EXISTS club;
DROP TABLE IF EXISTS personal_info;
DROP TABLE IF EXISTS age_category;


--
-- Name: personal_info; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE personal_info (
    personal_info_id int NOT NULL,
    last_name varchar(50) NOT NULL,
    first_name varchar(50) NOT NULL,
    date_of_birth date NOT NULL,
    gender varchar(10) NOT NULL,
    city varchar(50) NOT NULL,
    country varchar(50) NOT NULL,
    email varchar(100),
    personal_address varchar(200),
    telephone varchar(30),
    PRIMARY KEY(personal_info_id)
);

--
-- Name: club; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE club (
    club_id int NOT NULL,
    club_name varchar(50) NOT NULL,
    president_id int NOT NULL,
    club_address varchar(200) NOT NULL,
    city varchar(50) NOT NULL,
    country varchar(50) NOT NULL,
    PRIMARY KEY(club_id),
    foreign key (president_id) references personal_info(personal_info_id)
);

--
-- Name: age_category; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE age_category (
    age_category_id tinyint NOT NULL,
    name varchar(50) NOT NULL,
    from_age tinyint NOT NULL,
    to_age tinyint,
    PRIMARY KEY(age_category_id)
);

--
-- Name: judoka; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE judoka (
    judoka_id int NOT NULL,
    personal_info_id int NOT NULL,
    club_id int NOT NULL,
    joined_date date NOT NULL,
    payment_fee_information boolean NOT NULL,
    medical_certificate boolean NOT NULL,
    age_category_id tinyint NOT NULL,
    weight smallint NOT NULL,
    side varchar(30) NOT NULL,
    belt varchar(15) NOT NULL,
    mark smallint,
    PRIMARY KEY(judoka_id),
    foreign key (personal_info_id) references personal_info(personal_info_id),
    foreign key (club_id) references club(club_id),
    foreign key (age_category_id) references age_category(age_category_id)
);

--
-- Name: teacher; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE teacher (
    teacher_id int NOT NULL,
    personal_info_id int NOT NULL,
    PRIMARY KEY(teacher_id),
    foreign key (personal_info_id) references personal_info(personal_info_id)
);

--
-- Name: dojo; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE dojo (
    dojo_id int NOT NULL,
    dojo_address varchar(200) NOT NULL,
    capacity_maximum int NOT NULL,
    PRIMARY KEY(dojo_id)
);

--
-- Name: training_session; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE training_session (
    training_session_id int NOT NULL,
    club_id int NOT NULL,
    dojo_id int NOT NULL,
    teacher_id int NOT NULL,
    schedule datetime NOT NULL,
    age_category_id tinyint NOT NULL,
    PRIMARY KEY(training_session_id),
    foreign key (club_id) references club(club_id),
    foreign key (dojo_id) references dojo(dojo_id),
    foreign key (teacher_id) references teacher(teacher_id),
    foreign key (age_category_id) references age_category(age_category_id)
);

--
-- Name: training_record_of_club; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE training_session_record (
    training_session_record_id int NOT NULL,
    training_session_id int NOT NULL,
    judoka_id int NOT NULL,
    PRIMARY KEY(training_session_record_id),
    foreign key (training_session_id) references training_session(training_session_id),
    foreign key (judoka_id) references judoka(judoka_id)
);

--
-- Name: competition; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE competition (
    competition_id int NOT NULL,
    address varchar(200) NOT NULL,
    age_category_id tinyint NOT NULL,
    number_rounds smallint NOT NULL,
    PRIMARY KEY(competition_id),
    foreign key (age_category_id) references age_category(age_category_id)
);

--
-- Name: contest_category; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE contest_category(
    contest_category_id smallint NOT NULL,
    weight_category varchar(50) NOT NULL,
    gender varchar(10) NOT NULL,
    PRIMARY KEY(contest_category_id)
);

--
-- Name: contest; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE contest (
    contest_id int NOT NULL,
    competition_id int NOT NULL,
    round varchar(50) NOT NULL,
    contest_category_id smallint NOT NULL,
    contest_result_id int NOT NULL,
    judoka_1_id int NOT NULL,
    judoka_2_id int NOT NULL,
    referee_id int NOT NULL,
    PRIMARY KEY(contest_id),
    foreign key (competition_id) references competition(competition_id),
    foreign key (contest_category_id) references contest_category(contest_category_id),
    foreign key (judoka_1_id) references judoka(judoka_id),
    foreign key (judoka_2_id) references judoka(judoka_id),
    foreign key (referee_id) references personal_info(personal_info_id)
);

--
-- Name: contest_result; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE contest_result (
    contest_result_id int NOT NULL,
    contest_id int NOT NULL,
    winner_id int NOT NULL,
    PRIMARY KEY(contest_result_id),
    foreign key (contest_id) references contest(contest_id),
    foreign key (winner_id) references judoka(judoka_id)
);

--
-- Name: event; Type: TABLE; Schema: public; Owner: -; Tablespace:
--
CREATE TABLE event (
    event_id int NOT NULL,
    contest_id int NOT NULL,
    name varchar(50) NOT NULL,
    judoka_id int NOT NULL,
    PRIMARY KEY(event_id),
    foreign key (contest_id) references contest(contest_id),
    foreign key (judoka_id) references judoka(judoka_id)
);

--
-- SQL database dump complete
--
