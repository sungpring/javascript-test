<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>테트리스</title>
    <link rel="stylesheet" href="../resources/index/css/style.css">

</head>

<body>
    <div class="wrapper">
        <div class="game-text">
            <span>게임 종료</span> 
            <button>다시 시작</button>           
        </div>
        <div class="score">0</div>
        <div class="playground">
            <ul></ul>
        </div>
    </div>
    <script src="../resources/index/js/tetris.js" type="module"></script>
</body>

</html>