-- 코드를 입력하세요
SELECT MEMBER_ID, MEMBER_NAME, GENDER, TO_CHAR(DATE_OF_BIRTH, 'YYYY-MM-DD') AS DATE_OF_BIRTH
         FROM (SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_OF_BIRTH, 
               EXTRACT(MONTH FROM CAST(DATE_OF_BIRTH AS DATE)) AS M FROM MEMBER_PROFILE 
               WHERE TLNO IS NOT NULL AND GENDER = 'W')
         WHERE M = 3 ORDER BY MEMBER_ID;