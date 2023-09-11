<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
</head>
<body>
    <h1>회원 가입</h1>
    <form method="post" action="register">
        <label for="userId">사용자 ID (이메일):</label>
        <input type="text" id="userId" name="userId" th:value="${user.email}"><br>
        
        <label for="name">이름:</label>
        <input type="text" id="name" name="name" th:value="${user.name}"><br>
        
        <label for="birthday">생년월일:</label>
        <input type="text" id="birthday" name="birthday" th:value="${user.birthday}"><br>
        
        <label for="address">주소:</label>
        <input type="text" id="address" name="address" th:value="${user.address}"><br>
        
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="회원 등록">
    </form>
</body>
</html>
