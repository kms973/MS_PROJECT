<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
</head>
<body>
    <h1>회원 가입</h1>
    <form method="post" action="/login/signuptest">
        <label for="userId">사용자 ID:</label>
        <input type="text" id="userId" name="username"><br>
        
        <label for="name">이름:</label>
        <input type="text" id="name" name="cname"><br>
        
        <label for="birthday">생년월일:</label>
        <input type="text" id="birthday" name="cbirthdate"><br>
        
        <label for="address">주소:</label>
        <input type="text" id="address" name="caddress1"><br>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="회원 등록">
    </form>
</body>
</html>
