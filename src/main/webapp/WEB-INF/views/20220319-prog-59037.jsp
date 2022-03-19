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
https://programmers.co.kr/learn/courses/30/lessons/59037
<br><br><br><br><br><br>
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged';
<br><br><br><br><br><br>

https://programmers.co.kr/learn/courses/30/lessons/59403
<br><br><br><br><br><br>
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
<br><br><br><br><br><br>

https://programmers.co.kr/learn/courses/30/lessons/59404
<br><br><br><br><br><br>
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;
<br><br><br><br><br><br>

https://programmers.co.kr/learn/courses/30/lessons/59043?language=mysql
<br><br><br><br><br><br>
SELECT A.ANIMAL_ID, A.NAME 
FROM ANIMAL_INS as A, ANIMAL_OUTS as B
WHERE 1=1
AND A.ANIMAL_ID = B.ANIMAL_ID
AND A.DATETIME > B.DATETIME
ORDER BY A.DATETIME ASC;
<br><br><br><br><br><br>

https://programmers.co.kr/learn/courses/30/lessons/62284
<br><br><br><br><br><br>
SELECT DISTINCT A.CART_ID
FROM (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME='Milk') A
INNER JOIN (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME='Yogurt') B
ON A.CART_ID = B.CART_ID;
<br><br><br><br><br><br>

</body>
</html>