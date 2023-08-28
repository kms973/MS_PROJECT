<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입 완료</title>
</head>
<body>
    <h1>회원 가입 완료</h1>
    <p>회원 가입이 완료되었습니다.</p>
    
    <h2>가입한 회원 정보</h2>
    <p>사용자 ID: <%= request.getAttribute("userId") %></p>
    <p>이름: <%= request.getAttribute("name") %></p>
    <p>생년월일: <%= request.getAttribute("birthday") %></p>
    <p>주소: <%= request.getAttribute("address") %></p>
</body>
</html>
