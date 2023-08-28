<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
</head>
<body>
    <h1>회원 가입</h1>
    <form method="post">
        <!-- 사용자 ID 입력 -->
        <label for="userId">사용자 ID:</label>
        <input type="text" id="userId" name="userId"><br>
        
        <!-- 이름 입력 -->
        <label for="name">이름:</label>
        <input type="text" id="name" name="name"><br>
        
        <!-- 생년월일 입력 -->
        <label for="birthday">생년월일:</label>
        <input type="text" id="birthday" name="birthday"><br>
        
        <!-- 주소 입력 -->
        <label for="address">주소:</label>
        <input type="text" id="address" name="address"><br>
        
        <!-- 비밀번호 입력 -->
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password"><br>
        
        <input type="submit" value="회원 등록">
    </form>
    
    <hr>
    
    <%-- 회원 가입 결과 부분 --%>
    <h2>회원 가입 결과</h2>
    
    <%
        String userId = request.getParameter("userId");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        
        if (userId != null && name != null && birthday != null && address != null && password != null) {
    %>
    
    <p>회원 가입이 완료되었습니다.</p>
    <p>사용자 ID: <%= userId %></p>
    <p>이름: <%= name %></p>
    <p>생년월일: <%= birthday %></p>
    <p>주소: <%= address %></p>
    
    <%
        } else {
    %>
    
    <p>회원 가입 정보를 모두 입력해주세요.</p>
    
    <%
        }
    %>
</body>
</html>
