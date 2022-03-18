<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
</head>
<body>
https://programmers.co.kr/learn/courses/30/lessons/77487?language=mysql<br>
<br><br><br>

CREATE TABLE TEST_PLACES(
	ID INT(10) NOT NULL, 
	NAME2 VARCHAR(200) NOT NULL,
	HOST_ID INT(10) NOT null
); <br><br><br>

INSERT INTO TEST_PLACES(ID,NAME2,HOST_ID) VALUES(4431977,'BOUTIQUE STAYS - Somerset Terrace, Pet Friendly',760849);
INSERT INTO TEST_PLACES(ID,NAME2,HOST_ID) VALUES(5194998,'BOUTIQUE STAYS - Elwood Beaches 3, Pet Friendly',760849);
INSERT INTO TEST_PLACES(ID,NAME2,HOST_ID) VALUES(16045624,'Urban Jungle in the Heart of Melbourne',30900122);
INSERT INTO TEST_PLACES(ID,NAME2,HOST_ID) VALUES(17810814,'Stylish Bayside Retreat with a Luscious Garden',760849);
INSERT INTO TEST_PLACES(ID,NAME2,HOST_ID) VALUES(22740286,'FREE PARKING - The Velvet Lux in Melbourne CBD',30900122);
INSERT INTO TEST_PLACES(ID,NAME2,HOST_ID) VALUES(22868779,'★ Fresh Fitzroy Pad with City Views! ★',21058208);

COMMIT;<br><br><br>

SELECT ID,NAME2,HOST_ID FROM test_places
WHERE HOST_ID in (
	SELECT HOST_ID
	FROM test_places             
	GROUP BY HOST_ID
	HAVING COUNT(HOST_ID) > 1);<br><br><br>

구현한 방법
WHERE IN 으로
서브쿼리의 결과에 존재하는 임의의 값과 동일한 조건을 의미함.
괄호안의 서브쿼리를 실행하면
HOST_ID : 760849, 30900122 결과가 나오는데
HOST_ID 가 위 두개를 포함하고 있다면 SELECT 문에서 출력하는 방식으로 구현

<br><br><br>
<img src="/resources/index/coding-test/prog-77487-1.PNG">

</body>
</html>