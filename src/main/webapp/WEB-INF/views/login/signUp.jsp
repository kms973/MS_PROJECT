<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> <!-- 문자 인코딩 설정 -->
    <title>회원등록</title>
</head>
<body>
    <h1>회원등록</h1>
    <form action="process_registration.jsp" method="post">
        <!-- 사용자 ID 입력 -->
        <label for="userId">사용자 ID:</label>
        <input type="text" id="userId" name="userId"
            <% if (userId != null) { %>value="<%= userId %>"<% } %>>
        <br>
        
        <!-- 이름 입력 -->
        <label for="name">이름:</label>
        <input type="text" id="name" name="name"
            <% if (name != null) { %>value="<%= name %>"<% } %>>
        <br>
        
        <!-- 생년월일 입력 -->
        <label for="birthday">생년월일:</label>
        <input type="text" id="birthday" name="birthday"
            <% if (birthday != null) { %>value="<%= birthday %>"<% } %>>
        <br>
        
        <!-- 주소 입력 -->
        <label for="address">주소:</label>
        <input type="text" id="address" name="address"
            <% if (formattedAddress != null) { %>value="<%= formattedAddress %>"<% } %>>
        <br>
        
        <!-- 비밀번호 입력 -->
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="매장 등록">
    </form>
</body>
</html>
