-- 1. show the number of judokas joined clubs for training judo 
SELECT count(*) FROM JUDOKA; 

-- 2. list of judokas joined clubs for training judo 
SELECT j.JUDOKA_ID , j.JOINED_DATE, j.PERSONAL_INFO_ID  
FROM JUDOKA j
ORDER BY JOINED_DATE ASC;

-- 3. show the full name of judokas 
SELECT JUDOKA.JUDOKA_ID , JUDOKA.JOINED_DATE , PERSONAL_INFO.LAST_NAME , PERSONAL_INFO.FIRST_NAME  
FROM JUDOKA 
JOIN PERSONAL_INFO ON JUDOKA.PERSONAL_INFO_ID=PERSONAL_INFO.PERSONAL_INFO_ID
ORDER BY JUDOKA.JOINED_DATE ASC;

-- 4. show the information of judo teachers 
SELECT * FROM PERSONAL_INFO
INNER JOIN TEACHER ON TEACHER.PERSONAL_INFO_ID = PERSONAL_INFO.PERSONAL_INFO_ID;

-- 5. show the list of dojo in Paris
SELECT * FROM DOJO
WHERE DOJO.DOJO_ADDRESS='Paris';

-- 6. show the list of judo club in France
SELECT * FROM CLUB 
WHERE CLUB.COUNTRY ='France'
ORDER BY CLUB.CITY ASC;

-- 7. show the list of training session in one club e.g. club ID 1
SELECT * FROM TRAINING_SESSION
WHERE Training_session.CLUB_ID = 1
ORDER BY SCHEDULE ASC;

-- 8. show the list of judokas joined each training session
SELECT training_session_record.TRAINING_SESSION_ID, 
	personal_info.LAST_NAME ,
	personal_info.FIRST_NAME ,
	personal_info.GENDER ,
	personal_info.CITY,
	training_session_record.JUDOKA_ID ,
	judoka.JUDOKA_ID,
	judoka.PERSONAL_INFO_ID,
	personal_info.PERSONAL_INFO_ID
FROM PERSONAL_INFO 
INNER JOIN JUDOKA ON PERSONAL_INFO.PERSONAL_INFO_ID = judoka.PERSONAL_INFO_ID
INNER JOIN TRAINING_SESSION_RECORD ON training_session_record.JUDOKA_ID = judoka.JUDOKA_ID 
ORDER BY TRAINING_SESSION_RECORD.TRAINING_SESSION_ID;

-- 9. show the list of judokas participating in a competition 
SELECT contest.COMPETITION_ID,
	contest.JUDOKA_1_ID,
	personal_info.LAST_NAME,
	personal_info.FIRST_NAME,
	personal_info.GENDER,
	personal_info.CITY,
	judoka.JUDOKA_ID,
	judoka.PERSONAL_INFO_ID,
	personal_info.PERSONAL_INFO_ID
FROM PERSONAL_INFO
INNER JOIN JUDOKA ON PERSONAL_INFO.PERSONAL_INFO_ID = judoka.PERSONAL_INFO_ID
INNER JOIN CONTEST ON contest.JUDOKA_1_ID = judoka.JUDOKA_ID
UNION 
SELECT contest.COMPETITION_ID, 
	contest.JUDOKA_2_ID,
	personal_info.LAST_NAME,
	personal_info.FIRST_NAME,
	personal_info.GENDER,
	personal_info.CITY,
	judoka.JUDOKA_ID,
	judoka.PERSONAL_INFO_ID,
	personal_info.PERSONAL_INFO_ID
FROM PERSONAL_INFO
INNER JOIN JUDOKA ON PERSONAL_INFO.PERSONAL_INFO_ID = judoka.PERSONAL_INFO_ID
INNER JOIN CONTEST ON contest.JUDOKA_2_ID = judoka.JUDOKA_ID;

-- 10. show the number of contest in a competition
SELECT count(*) FROM contest;

-- 11. show the list of winner in each contest
SELECT contest_result.CONTEST_ID, 
	contest_result.WINNER_ID, 
	personal_info.LAST_NAME ,
	personal_info.FIRST_NAME ,
	personal_info.GENDER ,
	personal_info.CITY,
	judoka.JUDOKA_ID,
	judoka.PERSONAL_INFO_ID,
	personal_info.PERSONAL_INFO_ID,
FROM PERSONAL_INFO 
JOIN JUDOKA ON PERSONAL_INFO.PERSONAL_INFO_ID = judoka.PERSONAL_INFO_ID
JOIN CONTEST_RESULT ON contest_result.WINNER_ID = judoka.JUDOKA_ID 
ORDER BY contest_ID;


