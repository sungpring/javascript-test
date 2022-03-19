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
https://programmers.co.kr/learn/courses/30/lessons/59034?language=mysql
<br><br><br><br>
CREATE TABLE ANIMAL_INS(
	ANIMAL_ID VARCHAR(50) NOT NULL,
	ANIMAL_TYPE VARCHAR(50) NOT NULL,
	DATETIME1 DATETIME NOT NULL,
	INTAKE_CONDITION VARCHAR(50) NOT NULL,
	NAME1 VARCHAR(50) NULL,
	SEX_UPON_INTAKE VARCHAR(50) NOT NULL
);
<br><br><br><br>
<br><br><br><br>
SELECT * FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

</body>
</html>